
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum efx_phy_mode { ____Placeholder_efx_phy_mode } efx_phy_mode ;


 int PHY_MODE_TX_DISABLED ;

__attribute__((used)) static inline bool efx_phy_mode_disabled(enum efx_phy_mode mode)
{
 return !!(mode & ~PHY_MODE_TX_DISABLED);
}
