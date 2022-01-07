
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct isac_hw {int state; int name; } ;


 int ISACX_CIR0 ;
 int ISACX_CIR0_CIC0 ;
 int ReadISAC (struct isac_hw*,int ) ;
 int isac_ph_state_change (struct isac_hw*) ;
 int pr_debug (char*,int ,int,...) ;

__attribute__((used)) static void
isacsx_cic_irq(struct isac_hw *isac)
{
 u8 val;

 val = ReadISAC(isac, ISACX_CIR0);
 pr_debug("%s: ISACX CIR0 %02X\n", isac->name, val);
 if (val & ISACX_CIR0_CIC0) {
  pr_debug("%s: ph_state change %x->%x\n", isac->name,
   isac->state, val >> 4);
  isac->state = val >> 4;
  isac_ph_state_change(isac);
 }
}
