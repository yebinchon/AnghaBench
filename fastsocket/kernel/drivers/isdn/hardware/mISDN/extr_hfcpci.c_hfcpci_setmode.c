
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ protocol; int clkdel; int sctrl; int states; } ;
struct hfc_pci {TYPE_1__ hw; } ;


 int CLKDEL_NT ;
 int CLKDEL_TE ;
 int HFCPCI_CLKDEL ;
 int HFCPCI_LOAD_STATE ;
 int HFCPCI_SCTRL ;
 int HFCPCI_STATES ;
 scalar_t__ ISDN_P_NT_S0 ;
 int SCTRL_MODE_NT ;
 int Write_hfc (struct hfc_pci*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void
hfcpci_setmode(struct hfc_pci *hc)
{
 if (hc->hw.protocol == ISDN_P_NT_S0) {
  hc->hw.clkdel = CLKDEL_NT;
  hc->hw.sctrl |= SCTRL_MODE_NT;
  hc->hw.states = 1;
 } else {
  hc->hw.clkdel = CLKDEL_TE;
  hc->hw.sctrl &= ~SCTRL_MODE_NT;
  hc->hw.states = 2;
 }
 Write_hfc(hc, HFCPCI_CLKDEL, hc->hw.clkdel);
 Write_hfc(hc, HFCPCI_STATES, HFCPCI_LOAD_STATE | hc->hw.states);
 udelay(10);
 Write_hfc(hc, HFCPCI_STATES, hc->hw.states | 0x40);
 Write_hfc(hc, HFCPCI_SCTRL, hc->hw.sctrl);
}
