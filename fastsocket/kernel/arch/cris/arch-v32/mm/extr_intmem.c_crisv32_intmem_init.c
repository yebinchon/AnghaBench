
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intmem_allocation {int entry; int status; scalar_t__ offset; scalar_t__ size; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ MEM_INTMEM_SIZE ;
 scalar_t__ MEM_INTMEM_START ;
 scalar_t__ RESERVED_SIZE ;
 int STATUS_FREE ;
 int intmem_allocations ;
 int intmem_virtual ;
 int ioremap (scalar_t__,scalar_t__) ;
 scalar_t__ kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static void crisv32_intmem_init(void)
{
 static int initiated = 0;
 if (!initiated) {
  struct intmem_allocation* alloc =
    (struct intmem_allocation*)kmalloc(sizeof *alloc, GFP_KERNEL);
  INIT_LIST_HEAD(&intmem_allocations);
  intmem_virtual = ioremap(MEM_INTMEM_START + RESERVED_SIZE,
      MEM_INTMEM_SIZE - RESERVED_SIZE);
  initiated = 1;
  alloc->size = MEM_INTMEM_SIZE - RESERVED_SIZE;
  alloc->offset = 0;
  alloc->status = STATUS_FREE;
  list_add_tail(&alloc->entry, &intmem_allocations);
 }
}
