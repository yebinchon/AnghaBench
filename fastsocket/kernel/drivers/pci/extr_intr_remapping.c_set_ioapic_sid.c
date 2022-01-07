
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct irte {int dummy; } ;
struct TYPE_2__ {int id; int bus; int devfn; } ;


 int MAX_IO_APICS ;
 TYPE_1__* ir_ioapic ;
 int pr_warning (char*,int) ;
 int set_irte_sid (struct irte*,int,int ,int) ;

int set_ioapic_sid(struct irte *irte, int apic)
{
 int i;
 u16 sid = 0;

 if (!irte)
  return -1;

 for (i = 0; i < MAX_IO_APICS; i++) {
  if (ir_ioapic[i].id == apic) {
   sid = (ir_ioapic[i].bus << 8) | ir_ioapic[i].devfn;
   break;
  }
 }

 if (sid == 0) {
  pr_warning("Failed to set source-id of IOAPIC (%d)\n", apic);
  return -1;
 }

 set_irte_sid(irte, 1, 0, sid);

 return 0;
}
