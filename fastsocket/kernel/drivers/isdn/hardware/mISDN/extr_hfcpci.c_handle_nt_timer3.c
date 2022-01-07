
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mst_m; scalar_t__ nt_timer; int int_m1; } ;
struct hfc_pci {TYPE_1__ hw; int cfg; } ;
struct TYPE_4__ {int D; } ;
struct dchannel {TYPE_2__ dev; int Flags; struct hfc_pci* hw; } ;


 int FLG_ACTIVE ;
 int FLG_HFC_TIMER_T3 ;
 int GFP_ATOMIC ;
 int HFCPCI_INTS_TIMER ;
 int HFCPCI_INT_M1 ;
 int HFCPCI_MASTER ;
 int HFCPCI_MST_MODE ;
 int HFC_CFG_MASTER ;
 int MISDN_ID_ANY ;
 int PH_ACTIVATE_IND ;
 int Write_hfc (struct hfc_pci*,int ,int ) ;
 int _queue_data (int *,int ,int ,int ,int *,int ) ;
 int test_and_clear_bit (int ,int *) ;
 int test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void
handle_nt_timer3(struct dchannel *dch) {
 struct hfc_pci *hc = dch->hw;

 test_and_clear_bit(FLG_HFC_TIMER_T3, &dch->Flags);
 hc->hw.int_m1 &= ~HFCPCI_INTS_TIMER;
 Write_hfc(hc, HFCPCI_INT_M1, hc->hw.int_m1);
 hc->hw.nt_timer = 0;
 test_and_set_bit(FLG_ACTIVE, &dch->Flags);
 if (test_bit(HFC_CFG_MASTER, &hc->cfg))
  hc->hw.mst_m |= HFCPCI_MASTER;
 Write_hfc(hc, HFCPCI_MST_MODE, hc->hw.mst_m);
 _queue_data(&dch->dev.D, PH_ACTIVATE_IND,
     MISDN_ID_ANY, 0, ((void*)0), GFP_ATOMIC);
}
