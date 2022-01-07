
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct h_epa {int dummy; } ;
struct ehea_cqe {int dummy; } ;
struct TYPE_4__ {struct h_epa kernel; } ;
struct TYPE_3__ {int max_nr_of_cqes; int cq_token; int nr_pages; int eq_handle; } ;
struct ehea_cq {int fw_handle; int hw_queue; TYPE_2__ epas; TYPE_1__ attr; struct ehea_adapter* adapter; } ;
struct ehea_adapter {int handle; } ;


 int EHEA_CQ_REGISTER_ORIG ;
 int EHEA_PAGESIZE ;
 int FORCE_FREE ;
 int GFP_KERNEL ;
 int H_PAGE_REGISTERED ;
 int H_SUCCESS ;
 int ehea_error (char*,...) ;
 int ehea_h_alloc_resource_cq (int ,TYPE_1__*,int *,TYPE_2__*) ;
 int ehea_h_free_resource (int ,int ,int ) ;
 int ehea_h_register_rpage (int ,int ,int ,int ,int ,int) ;
 int ehea_reset_cq_ep (struct ehea_cq*) ;
 int ehea_reset_cq_n1 (struct ehea_cq*) ;
 int hw_qeit_reset (int *) ;
 void* hw_qpageit_get_inc (int *) ;
 int hw_queue_ctor (int *,int,int ,int) ;
 int hw_queue_dtor (int *) ;
 int kfree (struct ehea_cq*) ;
 struct ehea_cq* kzalloc (int,int ) ;
 int virt_to_abs (void*) ;

struct ehea_cq *ehea_create_cq(struct ehea_adapter *adapter,
          int nr_of_cqe, u64 eq_handle, u32 cq_token)
{
 struct ehea_cq *cq;
 struct h_epa epa;
 u64 *cq_handle_ref, hret, rpage;
 u32 act_nr_of_entries, act_pages, counter;
 int ret;
 void *vpage;

 cq = kzalloc(sizeof(*cq), GFP_KERNEL);
 if (!cq) {
  ehea_error("no mem for cq");
  goto out_nomem;
 }

 cq->attr.max_nr_of_cqes = nr_of_cqe;
 cq->attr.cq_token = cq_token;
 cq->attr.eq_handle = eq_handle;

 cq->adapter = adapter;

 cq_handle_ref = &cq->fw_handle;
 act_nr_of_entries = 0;
 act_pages = 0;

 hret = ehea_h_alloc_resource_cq(adapter->handle, &cq->attr,
     &cq->fw_handle, &cq->epas);
 if (hret != H_SUCCESS) {
  ehea_error("alloc_resource_cq failed");
  goto out_freemem;
 }

 ret = hw_queue_ctor(&cq->hw_queue, cq->attr.nr_pages,
       EHEA_PAGESIZE, sizeof(struct ehea_cqe));
 if (ret)
  goto out_freeres;

 for (counter = 0; counter < cq->attr.nr_pages; counter++) {
  vpage = hw_qpageit_get_inc(&cq->hw_queue);
  if (!vpage) {
   ehea_error("hw_qpageit_get_inc failed");
   goto out_kill_hwq;
  }

  rpage = virt_to_abs(vpage);
  hret = ehea_h_register_rpage(adapter->handle,
          0, EHEA_CQ_REGISTER_ORIG,
          cq->fw_handle, rpage, 1);
  if (hret < H_SUCCESS) {
   ehea_error("register_rpage_cq failed ehea_cq=%p "
       "hret=%llx counter=%i act_pages=%i",
       cq, hret, counter, cq->attr.nr_pages);
   goto out_kill_hwq;
  }

  if (counter == (cq->attr.nr_pages - 1)) {
   vpage = hw_qpageit_get_inc(&cq->hw_queue);

   if ((hret != H_SUCCESS) || (vpage)) {
    ehea_error("registration of pages not "
        "complete hret=%llx\n", hret);
    goto out_kill_hwq;
   }
  } else {
   if (hret != H_PAGE_REGISTERED) {
    ehea_error("CQ: registration of page failed "
        "hret=%llx\n", hret);
    goto out_kill_hwq;
   }
  }
 }

 hw_qeit_reset(&cq->hw_queue);
 epa = cq->epas.kernel;
 ehea_reset_cq_ep(cq);
 ehea_reset_cq_n1(cq);

 return cq;

out_kill_hwq:
 hw_queue_dtor(&cq->hw_queue);

out_freeres:
 ehea_h_free_resource(adapter->handle, cq->fw_handle, FORCE_FREE);

out_freemem:
 kfree(cq);

out_nomem:
 return ((void*)0);
}
