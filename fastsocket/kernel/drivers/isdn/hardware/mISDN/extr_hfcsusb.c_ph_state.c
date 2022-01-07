
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfcsusb {scalar_t__ protocol; } ;
struct dchannel {struct hfcsusb* hw; } ;


 scalar_t__ ISDN_P_NT_S0 ;
 scalar_t__ ISDN_P_TE_S0 ;
 int ph_state_nt (struct dchannel*) ;
 int ph_state_te (struct dchannel*) ;

__attribute__((used)) static void
ph_state(struct dchannel *dch)
{
 struct hfcsusb *hw = dch->hw;

 if (hw->protocol == ISDN_P_NT_S0)
  ph_state_nt(dch);
 else if (hw->protocol == ISDN_P_TE_S0)
  ph_state_te(dch);
}
