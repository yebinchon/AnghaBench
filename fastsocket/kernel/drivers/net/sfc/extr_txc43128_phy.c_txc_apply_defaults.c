
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct efx_nic {int dummy; } ;
struct TYPE_4__ {TYPE_1__* type; } ;
struct TYPE_3__ {int (* init_phy ) (struct efx_nic*) ;} ;


 int MDIO_MMD_PHYXS ;
 int MDIO_MMD_PMAPMD ;
 int TXC_ALRGS_ATXAMP0 ;
 int TXC_ALRGS_ATXAMP1 ;
 int TXC_ALRGS_ATXPRE0 ;
 int TXC_ALRGS_ATXPRE1 ;
 int TXC_ATXAMP_0820_BOTH ;
 int TXC_ATXAMP_DEFAULT ;
 int TXC_ATXPRE_DEFAULT ;
 int TXC_ATXPRE_NONE ;
 int TXC_MCTL_RXLED_LBN ;
 int TXC_MCTL_TXLED_LBN ;
 int TXC_MRGS_CTL ;
 int efx_mdio_read (struct efx_nic*,int ,int ) ;
 int efx_mdio_write (struct efx_nic*,int ,int ,int) ;
 TYPE_2__* falcon_board (struct efx_nic*) ;
 int stub1 (struct efx_nic*) ;
 int txc_reset_logic (struct efx_nic*) ;

__attribute__((used)) static void txc_apply_defaults(struct efx_nic *efx)
{
 int mctrl;







 efx_mdio_write(efx, MDIO_MMD_PHYXS, TXC_ALRGS_ATXPRE0, TXC_ATXPRE_NONE);
 efx_mdio_write(efx, MDIO_MMD_PHYXS, TXC_ALRGS_ATXPRE1, TXC_ATXPRE_NONE);


 efx_mdio_write(efx, MDIO_MMD_PHYXS,
         TXC_ALRGS_ATXAMP0, TXC_ATXAMP_0820_BOTH);
 efx_mdio_write(efx, MDIO_MMD_PHYXS,
         TXC_ALRGS_ATXAMP1, TXC_ATXAMP_0820_BOTH);




 efx_mdio_write(efx, MDIO_MMD_PMAPMD,
         TXC_ALRGS_ATXPRE0, TXC_ATXPRE_DEFAULT);
 efx_mdio_write(efx, MDIO_MMD_PMAPMD,
         TXC_ALRGS_ATXPRE1, TXC_ATXPRE_DEFAULT);
 efx_mdio_write(efx, MDIO_MMD_PMAPMD,
         TXC_ALRGS_ATXAMP0, TXC_ATXAMP_DEFAULT);
 efx_mdio_write(efx, MDIO_MMD_PMAPMD,
         TXC_ALRGS_ATXAMP1, TXC_ATXAMP_DEFAULT);


 mctrl = efx_mdio_read(efx, MDIO_MMD_PHYXS, TXC_MRGS_CTL);


 mctrl &= ~((1 << TXC_MCTL_TXLED_LBN) | (1 << TXC_MCTL_RXLED_LBN));
 efx_mdio_write(efx, MDIO_MMD_PHYXS, TXC_MRGS_CTL, mctrl);


 txc_reset_logic(efx);

 falcon_board(efx)->type->init_phy(efx);
}
