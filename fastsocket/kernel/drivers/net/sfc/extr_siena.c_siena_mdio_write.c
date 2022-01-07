
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int u16 ;
struct net_device {int dummy; } ;
struct efx_nic {int mdio_bus; } ;


 int EIO ;
 scalar_t__ MC_CMD_MDIO_STATUS_GOOD ;
 int efx_mcdi_mdio_write (struct efx_nic*,int ,int,int,int ,int ,scalar_t__*) ;
 struct efx_nic* netdev_priv (struct net_device*) ;

__attribute__((used)) static int siena_mdio_write(struct net_device *net_dev,
       int prtad, int devad, u16 addr, u16 value)
{
 struct efx_nic *efx = netdev_priv(net_dev);
 uint32_t status;
 int rc;

 rc = efx_mcdi_mdio_write(efx, efx->mdio_bus, prtad, devad,
     addr, value, &status);
 if (rc)
  return rc;
 if (status != MC_CMD_MDIO_STATUS_GOOD)
  return -EIO;

 return 0;
}
