
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_struct {int phys_addr; scalar_t__ addr; } ;
struct sq_mapping {int addr; scalar_t__ size; int sq_addr; } ;


 int EAGAIN ;
 int ENOMEM ;
 int SQ_ADDRMAX ;
 int SQ_QACR0 ;
 int SQ_QACR1 ;
 int VM_ALLOC ;
 struct vm_struct* __get_vm_area (scalar_t__,int ,int ,int ) ;
 int __pgprot (unsigned long) ;
 int ctrl_outl (int,int ) ;
 scalar_t__ ioremap_page_range (unsigned long,scalar_t__,int,int ) ;
 int vunmap (scalar_t__) ;

__attribute__((used)) static int __sq_remap(struct sq_mapping *map, unsigned long flags)
{
 ctrl_outl(((map->addr >> 26) << 2) & 0x1c, SQ_QACR0);
 ctrl_outl(((map->addr >> 26) << 2) & 0x1c, SQ_QACR1);


 return 0;
}
