
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct cmac {int offset; int nucast; struct adapter* adapter; } ;
struct TYPE_3__ {int * xauicfg; } ;
struct TYPE_4__ {scalar_t__ rev; TYPE_1__ vpd; } ;
struct adapter {TYPE_2__ params; int pdev; } ;


 scalar_t__ A_XGM_PORT_CFG ;
 scalar_t__ A_XGM_SERDES_CTRL ;
 int F_ENRGMII ;
 int XGMAC0_0_BASE_ADDR ;
 int XGMAC0_1_BASE_ADDR ;
 scalar_t__ is_10G (struct adapter*) ;
 int pci_read_config_word (int ,int,int*) ;
 int t3_set_reg_field (struct adapter*,scalar_t__,int ,int ) ;
 int t3_write_reg (struct adapter*,scalar_t__,int) ;
 scalar_t__ uses_xaui (struct adapter*) ;

__attribute__((used)) static void mac_prep(struct cmac *mac, struct adapter *adapter, int index)
{
 u16 devid;

 mac->adapter = adapter;
 pci_read_config_word(adapter->pdev, 0x2, &devid);

 if (devid == 0x37 && !adapter->params.vpd.xauicfg[1])
  index = 0;
 mac->offset = (XGMAC0_1_BASE_ADDR - XGMAC0_0_BASE_ADDR) * index;
 mac->nucast = 1;

 if (adapter->params.rev == 0 && uses_xaui(adapter)) {
  t3_write_reg(adapter, A_XGM_SERDES_CTRL + mac->offset,
        is_10G(adapter) ? 0x2901c04 : 0x2301c04);
  t3_set_reg_field(adapter, A_XGM_PORT_CFG + mac->offset,
     F_ENRGMII, 0);
 }
}
