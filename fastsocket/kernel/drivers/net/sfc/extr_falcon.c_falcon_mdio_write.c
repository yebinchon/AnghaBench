
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {int dummy; } ;
struct falcon_nic_data {int mdio_lock; } ;
struct efx_nic {int net_dev; struct falcon_nic_data* nic_data; } ;
typedef int efx_oword_t ;


 int EFX_POPULATE_OWORD_1 (int ,int ,int ) ;
 int EFX_POPULATE_OWORD_2 (int ,int ,int,int ,int) ;
 int FRF_AB_MD_DEV_ADR ;
 int FRF_AB_MD_GC ;
 int FRF_AB_MD_PHY_ADR ;
 int FRF_AB_MD_PRT_ADR ;
 int FRF_AB_MD_TXD ;
 int FRF_AB_MD_WRC ;
 int FR_AB_MD_CS ;
 int FR_AB_MD_ID ;
 int FR_AB_MD_PHY_ADR ;
 int FR_AB_MD_TXD ;
 int efx_writeo (struct efx_nic*,int *,int ) ;
 int falcon_gmii_wait (struct efx_nic*) ;
 int hw ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct efx_nic* netdev_priv (struct net_device*) ;
 int netif_vdbg (struct efx_nic*,int ,int ,char*,int,int,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static int falcon_mdio_write(struct net_device *net_dev,
        int prtad, int devad, u16 addr, u16 value)
{
 struct efx_nic *efx = netdev_priv(net_dev);
 struct falcon_nic_data *nic_data = efx->nic_data;
 efx_oword_t reg;
 int rc;

 netif_vdbg(efx, hw, efx->net_dev,
     "writing MDIO %d register %d.%d with 0x%04x\n",
      prtad, devad, addr, value);

 mutex_lock(&nic_data->mdio_lock);


 rc = falcon_gmii_wait(efx);
 if (rc)
  goto out;


 EFX_POPULATE_OWORD_1(reg, FRF_AB_MD_PHY_ADR, addr);
 efx_writeo(efx, &reg, FR_AB_MD_PHY_ADR);

 EFX_POPULATE_OWORD_2(reg, FRF_AB_MD_PRT_ADR, prtad,
        FRF_AB_MD_DEV_ADR, devad);
 efx_writeo(efx, &reg, FR_AB_MD_ID);


 EFX_POPULATE_OWORD_1(reg, FRF_AB_MD_TXD, value);
 efx_writeo(efx, &reg, FR_AB_MD_TXD);

 EFX_POPULATE_OWORD_2(reg,
        FRF_AB_MD_WRC, 1,
        FRF_AB_MD_GC, 0);
 efx_writeo(efx, &reg, FR_AB_MD_CS);


 rc = falcon_gmii_wait(efx);
 if (rc) {

  EFX_POPULATE_OWORD_2(reg,
         FRF_AB_MD_WRC, 0,
         FRF_AB_MD_GC, 1);
  efx_writeo(efx, &reg, FR_AB_MD_CS);
  udelay(10);
 }

out:
 mutex_unlock(&nic_data->mdio_lock);
 return rc;
}
