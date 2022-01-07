
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u64 ;
struct ipz_queue {int dummy; } ;
struct ipz_adapter_handle {int dummy; } ;
struct ib_device {int dummy; } ;
struct ehca_shca {struct ipz_adapter_handle ipz_hca_handle; struct ib_device ib_device; } ;
struct TYPE_2__ {int kernel; } ;
struct ehca_qp {struct ipz_queue ipz_rqueue; TYPE_1__ galpas; int ipz_qp_handle; } ;
struct ehca_pd {int dummy; } ;
struct ehca_alloc_queue_parms {int queue_size; int page_size; scalar_t__ is_small; int act_nr_sges; } ;


 int EBUSY ;
 int EHCA_PAGESIZE ;
 int EINVAL ;
 void* H_PAGE_REGISTERED ;
 int ehca2ib_return_code (void*) ;
 int ehca_err (struct ib_device*,char*,void*) ;
 void* hipz_h_register_rpage_qp (struct ipz_adapter_handle,int ,int *,int ,int,void*,int,int ) ;
 int ipz_qeit_reset (struct ipz_queue*) ;
 void* ipz_qpageit_get_inc (struct ipz_queue*) ;
 int ipz_queue_ctor (struct ehca_pd*,struct ipz_queue*,int,int,int,int ,int) ;
 int ipz_queue_dtor (struct ehca_pd*,struct ipz_queue*) ;
 void* virt_to_abs (void*) ;

__attribute__((used)) static inline int init_qp_queue(struct ehca_shca *shca,
    struct ehca_pd *pd,
    struct ehca_qp *my_qp,
    struct ipz_queue *queue,
    int q_type,
    u64 expected_hret,
    struct ehca_alloc_queue_parms *parms,
    int wqe_size)
{
 int ret, cnt, ipz_rc, nr_q_pages;
 void *vpage;
 u64 rpage, h_ret;
 struct ib_device *ib_dev = &shca->ib_device;
 struct ipz_adapter_handle ipz_hca_handle = shca->ipz_hca_handle;

 if (!parms->queue_size)
  return 0;

 if (parms->is_small) {
  nr_q_pages = 1;
  ipz_rc = ipz_queue_ctor(pd, queue, nr_q_pages,
     128 << parms->page_size,
     wqe_size, parms->act_nr_sges, 1);
 } else {
  nr_q_pages = parms->queue_size;
  ipz_rc = ipz_queue_ctor(pd, queue, nr_q_pages,
     EHCA_PAGESIZE, wqe_size,
     parms->act_nr_sges, 0);
 }

 if (!ipz_rc) {
  ehca_err(ib_dev, "Cannot allocate page for queue. ipz_rc=%i",
    ipz_rc);
  return -EBUSY;
 }


 for (cnt = 0; cnt < nr_q_pages; cnt++) {
  vpage = ipz_qpageit_get_inc(queue);
  if (!vpage) {
   ehca_err(ib_dev, "ipz_qpageit_get_inc() "
     "failed p_vpage= %p", vpage);
   ret = -EINVAL;
   goto init_qp_queue1;
  }
  rpage = virt_to_abs(vpage);

  h_ret = hipz_h_register_rpage_qp(ipz_hca_handle,
       my_qp->ipz_qp_handle,
       ((void*)0), 0, q_type,
       rpage, parms->is_small ? 0 : 1,
       my_qp->galpas.kernel);
  if (cnt == (nr_q_pages - 1)) {
   if (h_ret != expected_hret) {
    ehca_err(ib_dev, "hipz_qp_register_rpage() "
      "h_ret=%lli", h_ret);
    ret = ehca2ib_return_code(h_ret);
    goto init_qp_queue1;
   }
   vpage = ipz_qpageit_get_inc(&my_qp->ipz_rqueue);
   if (vpage) {
    ehca_err(ib_dev, "ipz_qpageit_get_inc() "
      "should not succeed vpage=%p", vpage);
    ret = -EINVAL;
    goto init_qp_queue1;
   }
  } else {
   if (h_ret != H_PAGE_REGISTERED) {
    ehca_err(ib_dev, "hipz_qp_register_rpage() "
      "h_ret=%lli", h_ret);
    ret = ehca2ib_return_code(h_ret);
    goto init_qp_queue1;
   }
  }
 }

 ipz_qeit_reset(queue);

 return 0;

init_qp_queue1:
 ipz_queue_dtor(pd, queue);
 return ret;
}
