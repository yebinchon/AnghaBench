
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct qt202x_phy_data {int firmware_ver; } ;
struct falcon_board {scalar_t__ major; int minor; } ;
struct efx_nic {scalar_t__ loopback_mode; int net_dev; struct qt202x_phy_data* phy_data; } ;


 scalar_t__ LOOPBACK_NONE ;
 int PMA_PMD_MODE_REG ;
 int PMA_PMD_RXIN_SEL_LBN ;
 int efx_mdio_read (struct efx_nic*,int,int) ;
 int efx_mdio_set_flag (struct efx_nic*,int,int ,int,int) ;
 int efx_mdio_write (struct efx_nic*,int,int,int) ;
 struct falcon_board* falcon_board (struct efx_nic*) ;
 int hw ;
 int msleep (int) ;
 int netif_dbg (struct efx_nic*,int ,int ,char*,int) ;
 int netif_err (struct efx_nic*,int ,int ,char*) ;
 int qt2025c_restart_firmware (struct efx_nic*) ;
 int qt2025c_wait_reset (struct efx_nic*) ;

__attribute__((used)) static int qt2025c_select_phy_mode(struct efx_nic *efx)
{
 struct qt202x_phy_data *phy_data = efx->phy_data;
 struct falcon_board *board = falcon_board(efx);
 int reg, rc, i;
 uint16_t phy_op_mode;




 if (phy_data->firmware_ver < 0x02000100)
  return 0;





 phy_op_mode = (efx->loopback_mode == LOOPBACK_NONE) ? 0x0038 : 0x0020;


 reg = efx_mdio_read(efx, 1, 0xc319);
 if ((reg & 0x0038) == phy_op_mode)
  return 0;
 netif_dbg(efx, hw, efx->net_dev, "Switching PHY to mode 0x%04x\n",
    phy_op_mode);





 efx_mdio_write(efx, 1, 0xc300, 0x0000);




 if (board->major == 0 && board->minor < 2) {
  efx_mdio_write(efx, 1, 0xc303, 0x4498);
  for (i = 0; i < 9; i++) {
   efx_mdio_write(efx, 1, 0xc303, 0x4488);
   efx_mdio_write(efx, 1, 0xc303, 0x4480);
   efx_mdio_write(efx, 1, 0xc303, 0x4490);
   efx_mdio_write(efx, 1, 0xc303, 0x4498);
  }
 } else {
  efx_mdio_write(efx, 1, 0xc303, 0x0920);
  efx_mdio_write(efx, 1, 0xd008, 0x0004);
  for (i = 0; i < 9; i++) {
   efx_mdio_write(efx, 1, 0xc303, 0x0900);
   efx_mdio_write(efx, 1, 0xd008, 0x0005);
   efx_mdio_write(efx, 1, 0xc303, 0x0920);
   efx_mdio_write(efx, 1, 0xd008, 0x0004);
  }
  efx_mdio_write(efx, 1, 0xc303, 0x4900);
 }
 efx_mdio_write(efx, 1, 0xc303, 0x4900);
 efx_mdio_write(efx, 1, 0xc302, 0x0004);
 efx_mdio_write(efx, 1, 0xc316, 0x0013);
 efx_mdio_write(efx, 1, 0xc318, 0x0054);
 efx_mdio_write(efx, 1, 0xc319, phy_op_mode);
 efx_mdio_write(efx, 1, 0xc31a, 0x0098);
 efx_mdio_write(efx, 3, 0x0026, 0x0e00);
 efx_mdio_write(efx, 3, 0x0027, 0x0013);
 efx_mdio_write(efx, 3, 0x0028, 0xa528);
 efx_mdio_write(efx, 1, 0xd006, 0x000a);
 efx_mdio_write(efx, 1, 0xd007, 0x0009);
 efx_mdio_write(efx, 1, 0xd008, 0x0004);




 efx_mdio_write(efx, 1, 0xc317, 0x00ff);


 efx_mdio_set_flag(efx, 1, PMA_PMD_MODE_REG,
     1 << PMA_PMD_RXIN_SEL_LBN, 0);
 efx_mdio_write(efx, 1, 0xc300, 0x0002);
 msleep(20);


 qt2025c_restart_firmware(efx);


 rc = qt2025c_wait_reset(efx);
 if (rc < 0) {
  netif_err(efx, hw, efx->net_dev,
     "PHY microcontroller reset during mode switch "
     "timed out\n");
  return rc;
 }

 return 0;
}
