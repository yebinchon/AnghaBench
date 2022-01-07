
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u32 ;
struct nes_device {size_t mac_index; struct nes_adapter* nesadapter; } ;
struct nes_adapter {int* phy_type; int* phy_index; int phy_lock; } ;


 int NES_IDX_MAC_TX_CONFIG ;




 int nes_init_1g_phy (struct nes_device*,int,int) ;
 int nes_init_2025_phy (struct nes_device*,int,int) ;
 size_t nes_read_indexed (struct nes_device*,int ) ;
 int nes_write_indexed (struct nes_device*,int ,size_t) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int nes_init_phy(struct nes_device *nesdev)
{
 struct nes_adapter *nesadapter = nesdev->nesadapter;
 u32 mac_index = nesdev->mac_index;
 u32 tx_config = 0;
 unsigned long flags;
 u8 phy_type = nesadapter->phy_type[mac_index];
 u8 phy_index = nesadapter->phy_index[mac_index];
 int ret = 0;

 tx_config = nes_read_indexed(nesdev, NES_IDX_MAC_TX_CONFIG);
 if (phy_type == 131) {

  tx_config &= 0xFFFFFFE3;
  tx_config |= 0x04;
 } else {

  tx_config &= 0xFFFFFFE3;
  tx_config |= 0x1D;
 }
 nes_write_indexed(nesdev, NES_IDX_MAC_TX_CONFIG, tx_config);

 spin_lock_irqsave(&nesdev->nesadapter->phy_lock, flags);

 switch (phy_type) {
 case 131:
  ret = nes_init_1g_phy(nesdev, phy_type, phy_index);
  break;
 case 130:
 case 128:
 case 129:
  ret = nes_init_2025_phy(nesdev, phy_type, phy_index);
  break;
 }

 spin_unlock_irqrestore(&nesdev->nesadapter->phy_lock, flags);

 return ret;
}
