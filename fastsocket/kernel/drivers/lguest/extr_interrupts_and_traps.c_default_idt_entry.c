
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct desc_struct {int b; int a; } ;


 int GUEST_PL ;
 int LGUEST_CS ;
 int LGUEST_TRAP_ENTRY ;

__attribute__((used)) static void default_idt_entry(struct desc_struct *idt,
         int trap,
         const unsigned long handler,
         const struct desc_struct *base)
{

 u32 flags = 0x8e00;





 if (trap == LGUEST_TRAP_ENTRY)
  flags |= (GUEST_PL << 13);
 else if (base)




  flags |= (base->b & 0x6000);


 idt->a = (LGUEST_CS<<16) | (handler&0x0000FFFF);
 idt->b = (handler&0xFFFF0000) | flags;
}
