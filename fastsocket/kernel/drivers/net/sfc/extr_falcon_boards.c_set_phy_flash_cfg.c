
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int phy_mode; scalar_t__ state; int net_dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef enum efx_phy_mode { ____Placeholder_efx_phy_mode } efx_phy_mode ;


 int EBUSY ;
 int PHY_MODE_SPECIAL ;
 scalar_t__ STATE_READY ;
 int efx_reconfigure_port (struct efx_nic*) ;
 int falcon_start_nic_stats (struct efx_nic*) ;
 int falcon_stop_nic_stats (struct efx_nic*) ;
 scalar_t__ netif_running (int ) ;
 struct efx_nic* pci_get_drvdata (int ) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int sfe4001_poweron (struct efx_nic*) ;
 int to_pci_dev (struct device*) ;

__attribute__((used)) static ssize_t set_phy_flash_cfg(struct device *dev,
     struct device_attribute *attr,
     const char *buf, size_t count)
{
 struct efx_nic *efx = pci_get_drvdata(to_pci_dev(dev));
 enum efx_phy_mode old_mode, new_mode;
 int err;

 rtnl_lock();
 old_mode = efx->phy_mode;
 if (count == 0 || *buf == '0')
  new_mode = old_mode & ~PHY_MODE_SPECIAL;
 else
  new_mode = PHY_MODE_SPECIAL;
 if (!((old_mode ^ new_mode) & PHY_MODE_SPECIAL)) {
  err = 0;
 } else if (efx->state != STATE_READY || netif_running(efx->net_dev)) {
  err = -EBUSY;
 } else {


  efx->phy_mode = new_mode;
  if (new_mode & PHY_MODE_SPECIAL)
   falcon_stop_nic_stats(efx);
  err = sfe4001_poweron(efx);
  if (!err)
   err = efx_reconfigure_port(efx);
  if (!(new_mode & PHY_MODE_SPECIAL))
   falcon_start_nic_stats(efx);
 }
 rtnl_unlock();

 return err ? err : count;
}
