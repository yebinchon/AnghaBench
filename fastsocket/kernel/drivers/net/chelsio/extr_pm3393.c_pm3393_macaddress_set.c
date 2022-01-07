
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct cmac {TYPE_1__* instance; } ;
struct TYPE_2__ {int enabled; int mac_addr; } ;


 int MAC_DIRECTION_RX ;
 int MAC_DIRECTION_TX ;
 int SUNI1x10GEXP_REG_RXXG_ADDRESS_FILTER_CONTROL_0 ;
 int SUNI1x10GEXP_REG_RXXG_EXACT_MATCH_ADDR_1_HIGH ;
 int SUNI1x10GEXP_REG_RXXG_EXACT_MATCH_ADDR_1_LOW ;
 int SUNI1x10GEXP_REG_RXXG_EXACT_MATCH_ADDR_1_MID ;
 int SUNI1x10GEXP_REG_RXXG_SA_15_0 ;
 int SUNI1x10GEXP_REG_RXXG_SA_31_16 ;
 int SUNI1x10GEXP_REG_RXXG_SA_47_32 ;
 int SUNI1x10GEXP_REG_TXXG_SA_15_0 ;
 int SUNI1x10GEXP_REG_TXXG_SA_31_16 ;
 int SUNI1x10GEXP_REG_TXXG_SA_47_32 ;
 int memcpy (int ,scalar_t__*,int) ;
 int pm3393_disable (struct cmac*,int) ;
 int pm3393_enable (struct cmac*,int) ;
 int pmread (struct cmac*,int ,int*) ;
 int pmwrite (struct cmac*,int ,int) ;

__attribute__((used)) static int pm3393_macaddress_set(struct cmac *cmac, u8 ma[6])
{
 u32 val, lo, mid, hi, enabled = cmac->instance->enabled;
 memcpy(cmac->instance->mac_addr, ma, 6);

 lo = ((u32) ma[1] << 8) | (u32) ma[0];
 mid = ((u32) ma[3] << 8) | (u32) ma[2];
 hi = ((u32) ma[5] << 8) | (u32) ma[4];


 if (enabled)
  pm3393_disable(cmac, MAC_DIRECTION_RX | MAC_DIRECTION_TX);


 pmwrite(cmac, SUNI1x10GEXP_REG_RXXG_SA_15_0, lo);
 pmwrite(cmac, SUNI1x10GEXP_REG_RXXG_SA_31_16, mid);
 pmwrite(cmac, SUNI1x10GEXP_REG_RXXG_SA_47_32, hi);


 pmwrite(cmac, SUNI1x10GEXP_REG_TXXG_SA_15_0, lo);
 pmwrite(cmac, SUNI1x10GEXP_REG_TXXG_SA_31_16, mid);
 pmwrite(cmac, SUNI1x10GEXP_REG_TXXG_SA_47_32, hi);





 pmread(cmac, SUNI1x10GEXP_REG_RXXG_ADDRESS_FILTER_CONTROL_0, &val);
 val &= 0xff0f;
 pmwrite(cmac, SUNI1x10GEXP_REG_RXXG_ADDRESS_FILTER_CONTROL_0, val);

 pmwrite(cmac, SUNI1x10GEXP_REG_RXXG_EXACT_MATCH_ADDR_1_LOW, lo);
 pmwrite(cmac, SUNI1x10GEXP_REG_RXXG_EXACT_MATCH_ADDR_1_MID, mid);
 pmwrite(cmac, SUNI1x10GEXP_REG_RXXG_EXACT_MATCH_ADDR_1_HIGH, hi);

 val |= 0x0090;
 pmwrite(cmac, SUNI1x10GEXP_REG_RXXG_ADDRESS_FILTER_CONTROL_0, val);

 if (enabled)
  pm3393_enable(cmac, enabled);
 return 0;
}
