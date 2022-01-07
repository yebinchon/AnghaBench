
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int rev; struct b43_phy_lp* lp; } ;
struct b43_wldev {TYPE_1__ phy; } ;
struct b43_phy_lp {int txpctl_mode; int tssi_idx; int tx_pwr_idx_over; scalar_t__ tssi_npt; } ;
typedef enum b43_lpphy_txpctl_mode { ____Placeholder_b43_lpphy_txpctl_mode } b43_lpphy_txpctl_mode ;


 int B43_LPPHY_TXPCTL_HW ;
 int B43_LPPHY_TX_PWR_CTL_CMD ;
 int B43_LPPHY_TX_PWR_CTL_NNUM ;
 int B43_PHY_OFDM (int) ;
 int b43_phy_mask (struct b43_wldev*,int ,int) ;
 int b43_phy_maskset (struct b43_wldev*,int ,int,int) ;
 int b43_phy_set (struct b43_wldev*,int ,int) ;
 int lpphy_disable_tx_gain_override (struct b43_wldev*) ;
 int lpphy_read_tx_pctl_mode_from_hardware (struct b43_wldev*) ;
 int lpphy_write_tx_pctl_mode_to_hardware (struct b43_wldev*) ;

__attribute__((used)) static void lpphy_set_tx_power_control(struct b43_wldev *dev,
           enum b43_lpphy_txpctl_mode mode)
{
 struct b43_phy_lp *lpphy = dev->phy.lp;
 enum b43_lpphy_txpctl_mode oldmode;

 lpphy_read_tx_pctl_mode_from_hardware(dev);
 oldmode = lpphy->txpctl_mode;
 if (oldmode == mode)
  return;
 lpphy->txpctl_mode = mode;

 if (oldmode == B43_LPPHY_TXPCTL_HW) {


 } else {
  if (mode == B43_LPPHY_TXPCTL_HW) {

   b43_phy_maskset(dev, B43_LPPHY_TX_PWR_CTL_CMD,
     0xFF80, lpphy->tssi_idx);
   b43_phy_maskset(dev, B43_LPPHY_TX_PWR_CTL_NNUM,
     0x8FFF, ((u16)lpphy->tssi_npt << 16));

   lpphy_disable_tx_gain_override(dev);
   lpphy->tx_pwr_idx_over = -1;
  }
 }
 if (dev->phy.rev >= 2) {
  if (mode == B43_LPPHY_TXPCTL_HW)
   b43_phy_set(dev, B43_PHY_OFDM(0xD0), 0x2);
  else
   b43_phy_mask(dev, B43_PHY_OFDM(0xD0), 0xFFFD);
 }
 lpphy_write_tx_pctl_mode_to_hardware(dev);
}
