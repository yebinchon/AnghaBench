
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;
struct ath5k_hw {scalar_t__ ah_version; struct pci_dev* pdev; } ;


 scalar_t__ AR5K_AR5210 ;
 int AR5K_PM_AWAKE ;
 int AR5K_RESET_CTL_BASEBAND ;
 int AR5K_RESET_CTL_DMA ;
 int AR5K_RESET_CTL_MAC ;
 int AR5K_RESET_CTL_PCI ;
 int AR5K_RESET_CTL_PCU ;
 int AR5K_RESET_CTL_PHY ;
 int ATH5K_ERR (struct ath5k_hw*,char*) ;
 scalar_t__ ATH_AHB ;
 int EIO ;
 scalar_t__ ath5k_get_bus_type (struct ath5k_hw*) ;
 int ath5k_hw_nic_reset (struct ath5k_hw*,int) ;
 int ath5k_hw_set_power_mode (struct ath5k_hw*,int ,int,int ) ;
 scalar_t__ pci_is_pcie (struct pci_dev*) ;
 int usleep_range (int,int) ;

int
ath5k_hw_on_hold(struct ath5k_hw *ah)
{
 struct pci_dev *pdev = ah->pdev;
 u32 bus_flags;
 int ret;

 if (ath5k_get_bus_type(ah) == ATH_AHB)
  return 0;


 ret = ath5k_hw_set_power_mode(ah, AR5K_PM_AWAKE, 1, 0);
 if (ret) {
  ATH5K_ERR(ah, "failed to wakeup the MAC Chip\n");
  return ret;
 }
 bus_flags = (pdev && pci_is_pcie(pdev)) ? 0 : AR5K_RESET_CTL_PCI;

 if (ah->ah_version == AR5K_AR5210) {
  ret = ath5k_hw_nic_reset(ah, AR5K_RESET_CTL_PCU |
   AR5K_RESET_CTL_MAC | AR5K_RESET_CTL_DMA |
   AR5K_RESET_CTL_PHY | AR5K_RESET_CTL_PCI);
   usleep_range(2000, 2500);
 } else {
  ret = ath5k_hw_nic_reset(ah, AR5K_RESET_CTL_PCU |
   AR5K_RESET_CTL_BASEBAND | bus_flags);
 }

 if (ret) {
  ATH5K_ERR(ah, "failed to put device on warm reset\n");
  return -EIO;
 }


 ret = ath5k_hw_set_power_mode(ah, AR5K_PM_AWAKE, 1, 0);
 if (ret) {
  ATH5K_ERR(ah, "failed to put device on hold\n");
  return ret;
 }

 return ret;
}
