
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lguest_ro_state {int guest_tss; struct desc_struct* guest_gdt; } ;
struct desc_struct {int a; int b; } ;


 struct desc_struct FULL_EXEC_SEGMENT ;
 struct desc_struct FULL_SEGMENT ;
 size_t GDT_ENTRY_LGUEST_CS ;
 size_t GDT_ENTRY_LGUEST_DS ;
 size_t GDT_ENTRY_TSS ;

void setup_default_gdt_entries(struct lguest_ro_state *state)
{
 struct desc_struct *gdt = state->guest_gdt;
 unsigned long tss = (unsigned long)&state->guest_tss;


 gdt[GDT_ENTRY_LGUEST_CS] = FULL_EXEC_SEGMENT;
 gdt[GDT_ENTRY_LGUEST_DS] = FULL_SEGMENT;







 gdt[GDT_ENTRY_TSS].a = 0x00000067 | (tss << 16);
 gdt[GDT_ENTRY_TSS].b = 0x00008900 | (tss & 0xFF000000)
  | ((tss >> 16) & 0x000000FF);
}
