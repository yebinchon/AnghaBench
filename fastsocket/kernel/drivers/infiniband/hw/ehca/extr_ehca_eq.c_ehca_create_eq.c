
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct ib_device {int dummy; } ;
struct ehca_shca {int ipz_hca_handle; struct ib_device ib_device; } ;
struct ehca_eqe {int dummy; } ;
struct ehca_eq {int is_initialized; int ipz_queue; int ist; int interrupt_task; int pf; int ipz_eq_handle; int length; int irq_spinlock; int spinlock; } ;
typedef enum ehca_eq_type { ____Placeholder_ehca_eq_type } ehca_eq_type ;


 int const EHCA_EQ ;
 int const EHCA_NEQ ;
 int EHCA_PAGESIZE ;
 int EINVAL ;
 scalar_t__ H_PAGE_REGISTERED ;
 scalar_t__ H_SUCCESS ;
 int IRQF_DISABLED ;
 int ehca_err (struct ib_device*,char*,...) ;
 int ehca_interrupt_eq ;
 int ehca_interrupt_neq ;
 int ehca_tasklet_eq ;
 int ehca_tasklet_neq ;
 scalar_t__ hipz_h_alloc_resource_eq (int ,int *,int const,int const,int *,int *,int*,int *) ;
 int hipz_h_destroy_eq (int ,struct ehca_eq*) ;
 scalar_t__ hipz_h_register_rpage_eq (int ,int ,int *,int ,int ,scalar_t__,int) ;
 int ibmebus_request_irq (int ,int ,int ,char*,void*) ;
 int ipz_qeit_reset (int *) ;
 void* ipz_qpageit_get_inc (int *) ;
 int ipz_queue_ctor (int *,int *,int,int ,int,int ,int ) ;
 int ipz_queue_dtor (int *,int *) ;
 int spin_lock_init (int *) ;
 int tasklet_init (int *,int ,long) ;
 scalar_t__ virt_to_abs (void*) ;

int ehca_create_eq(struct ehca_shca *shca,
     struct ehca_eq *eq,
     const enum ehca_eq_type type, const u32 length)
{
 int ret;
 u64 h_ret;
 u32 nr_pages;
 u32 i;
 void *vpage;
 struct ib_device *ib_dev = &shca->ib_device;

 spin_lock_init(&eq->spinlock);
 spin_lock_init(&eq->irq_spinlock);
 eq->is_initialized = 0;

 if (type != EHCA_EQ && type != EHCA_NEQ) {
  ehca_err(ib_dev, "Invalid EQ type %x. eq=%p", type, eq);
  return -EINVAL;
 }
 if (!length) {
  ehca_err(ib_dev, "EQ length must not be zero. eq=%p", eq);
  return -EINVAL;
 }

 h_ret = hipz_h_alloc_resource_eq(shca->ipz_hca_handle,
      &eq->pf,
      type,
      length,
      &eq->ipz_eq_handle,
      &eq->length,
      &nr_pages, &eq->ist);

 if (h_ret != H_SUCCESS) {
  ehca_err(ib_dev, "Can't allocate EQ/NEQ. eq=%p", eq);
  return -EINVAL;
 }

 ret = ipz_queue_ctor(((void*)0), &eq->ipz_queue, nr_pages,
        EHCA_PAGESIZE, sizeof(struct ehca_eqe), 0, 0);
 if (!ret) {
  ehca_err(ib_dev, "Can't allocate EQ pages eq=%p", eq);
  goto create_eq_exit1;
 }

 for (i = 0; i < nr_pages; i++) {
  u64 rpage;

  vpage = ipz_qpageit_get_inc(&eq->ipz_queue);
  if (!vpage)
   goto create_eq_exit2;

  rpage = virt_to_abs(vpage);
  h_ret = hipz_h_register_rpage_eq(shca->ipz_hca_handle,
       eq->ipz_eq_handle,
       &eq->pf,
       0, 0, rpage, 1);

  if (i == (nr_pages - 1)) {

   vpage = ipz_qpageit_get_inc(&eq->ipz_queue);
   if (h_ret != H_SUCCESS || vpage)
    goto create_eq_exit2;
  } else {
   if (h_ret != H_PAGE_REGISTERED)
    goto create_eq_exit2;
  }
 }

 ipz_qeit_reset(&eq->ipz_queue);


 if (type == EHCA_EQ) {
  tasklet_init(&eq->interrupt_task, ehca_tasklet_eq, (long)shca);

  ret = ibmebus_request_irq(eq->ist, ehca_interrupt_eq,
       IRQF_DISABLED, "ehca_eq",
       (void *)shca);
  if (ret < 0)
   ehca_err(ib_dev, "Can't map interrupt handler.");
 } else if (type == EHCA_NEQ) {
  tasklet_init(&eq->interrupt_task, ehca_tasklet_neq, (long)shca);

  ret = ibmebus_request_irq(eq->ist, ehca_interrupt_neq,
       IRQF_DISABLED, "ehca_neq",
       (void *)shca);
  if (ret < 0)
   ehca_err(ib_dev, "Can't map interrupt handler.");
 }

 eq->is_initialized = 1;

 return 0;

create_eq_exit2:
 ipz_queue_dtor(((void*)0), &eq->ipz_queue);

create_eq_exit1:
 hipz_h_destroy_eq(shca->ipz_hca_handle, eq);

 return -EINVAL;
}
