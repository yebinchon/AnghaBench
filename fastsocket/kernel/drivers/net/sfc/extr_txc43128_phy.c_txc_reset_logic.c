
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;


 int MDIO_MMD_PCS ;
 int txc_reset_logic_mmd (struct efx_nic*,int ) ;

__attribute__((used)) static void txc_reset_logic(struct efx_nic *efx)
{



 txc_reset_logic_mmd(efx, MDIO_MMD_PCS);
}
