
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cryptocop_int_operation {struct cryptocop_dma_desc* cdesc_in; struct cryptocop_dma_desc* cdesc_out; void* alloc_ptr; } ;
struct cryptocop_dma_desc {struct cryptocop_dma_desc* next; } ;


 int DEBUG (int ) ;
 int free_cdesc (struct cryptocop_dma_desc*) ;
 int kfree (void*) ;
 int printk (char*,struct cryptocop_int_operation*,void*) ;

__attribute__((used)) static void delete_internal_operation(struct cryptocop_int_operation *iop)
{
 void *ptr = iop->alloc_ptr;
 struct cryptocop_dma_desc *cd = iop->cdesc_out;
 struct cryptocop_dma_desc *next;

 DEBUG(printk("delete_internal_operation: iop=0x%p, alloc_ptr=0x%p\n", iop, ptr));

 while (cd) {
  next = cd->next;
  free_cdesc(cd);
  cd = next;
 }
 cd = iop->cdesc_in;
 while (cd) {
  next = cd->next;
  free_cdesc(cd);
  cd = next;
 }
 kfree(ptr);
}
