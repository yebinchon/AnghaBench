
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int board_revision; int port0_phy_addr; int port0_phy_type; } ;
struct TYPE_5__ {int * spi_device_type; } ;
struct falcon_nvconfig {TYPE_3__ board_v2; int * mac_address; TYPE_1__ board_v3; int board_struct_ver; } ;
struct falcon_nic_data {int spi_eeprom; int spi_flash; } ;
struct TYPE_6__ {int prtad; } ;
struct efx_nic {TYPE_2__ mdio; int phy_type; TYPE_4__* net_dev; struct falcon_nic_data* nic_data; } ;
struct TYPE_8__ {int perm_addr; } ;


 int ENOMEM ;
 int ETH_ALEN ;
 size_t FFE_AB_SPI_DEVICE_EEPROM ;
 size_t FFE_AB_SPI_DEVICE_FLASH ;
 int GFP_KERNEL ;
 int falcon_probe_board (struct efx_nic*,int) ;
 int falcon_read_nvram (struct efx_nic*,struct falcon_nvconfig*) ;
 int falcon_spi_device_init (struct efx_nic*,int *,size_t,int ) ;
 int kfree (struct falcon_nvconfig*) ;
 struct falcon_nvconfig* kmalloc (int,int ) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int memcpy (int ,int ,int ) ;
 int netif_dbg (struct efx_nic*,int ,TYPE_4__*,char*,int ,int ) ;
 int probe ;

__attribute__((used)) static int falcon_probe_nvconfig(struct efx_nic *efx)
{
 struct falcon_nic_data *nic_data = efx->nic_data;
 struct falcon_nvconfig *nvconfig;
 int rc;

 nvconfig = kmalloc(sizeof(*nvconfig), GFP_KERNEL);
 if (!nvconfig)
  return -ENOMEM;

 rc = falcon_read_nvram(efx, nvconfig);
 if (rc)
  goto out;

 efx->phy_type = nvconfig->board_v2.port0_phy_type;
 efx->mdio.prtad = nvconfig->board_v2.port0_phy_addr;

 if (le16_to_cpu(nvconfig->board_struct_ver) >= 3) {
  falcon_spi_device_init(
   efx, &nic_data->spi_flash, FFE_AB_SPI_DEVICE_FLASH,
   le32_to_cpu(nvconfig->board_v3
        .spi_device_type[FFE_AB_SPI_DEVICE_FLASH]));
  falcon_spi_device_init(
   efx, &nic_data->spi_eeprom, FFE_AB_SPI_DEVICE_EEPROM,
   le32_to_cpu(nvconfig->board_v3
        .spi_device_type[FFE_AB_SPI_DEVICE_EEPROM]));
 }


 memcpy(efx->net_dev->perm_addr, nvconfig->mac_address[0], ETH_ALEN);

 netif_dbg(efx, probe, efx->net_dev, "PHY is %d phy_id %d\n",
    efx->phy_type, efx->mdio.prtad);

 rc = falcon_probe_board(efx,
    le16_to_cpu(nvconfig->board_v2.board_revision));
out:
 kfree(nvconfig);
 return rc;
}
