
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_memory_reservation {int nr_extents; int extent_start; int domid; int extent_order; int address_bits; } ;
struct vm_struct {scalar_t__ addr; int size; } ;


 int BUG_ON (int) ;
 int DOMID_SELF ;
 unsigned long HYPERVISOR_memory_op (int ,struct xen_memory_reservation*) ;
 unsigned long PAGE_SHIFT ;
 int XENMEM_populate_physmap ;
 unsigned long __pa (scalar_t__) ;
 int free_pages (unsigned long,unsigned int) ;
 unsigned int get_order (int ) ;
 int kfree (struct vm_struct*) ;
 int set_xen_guest_handle (int ,unsigned long*) ;

void xen_free_vm_area(struct vm_struct *area)
{
 unsigned int order = get_order(area->size);
 unsigned long i;
 unsigned long phys_addr = __pa(area->addr);



 for (i = 0; i < (1 << order); i++) {
  unsigned long ret;
  unsigned long gpfn = (phys_addr >> PAGE_SHIFT) + i;
  struct xen_memory_reservation reservation = {
   .nr_extents = 1,
   .address_bits = 0,
   .extent_order = 0,
   .domid = DOMID_SELF
  };
  set_xen_guest_handle(reservation.extent_start, &gpfn);
  ret = HYPERVISOR_memory_op(XENMEM_populate_physmap,
        &reservation);
  BUG_ON(ret != 1);
 }
 free_pages((unsigned long)area->addr, order);
 kfree(area);
}
