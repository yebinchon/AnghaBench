
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;


 int MDIO_MMD_PCS ;
 int TXC_BIST_CTRL_TYPE_TSD ;
 int txc_bist_one (struct efx_nic*,int ,int ) ;

__attribute__((used)) static int txc_bist(struct efx_nic *efx)
{
 return txc_bist_one(efx, MDIO_MMD_PCS, TXC_BIST_CTRL_TYPE_TSD);
}
