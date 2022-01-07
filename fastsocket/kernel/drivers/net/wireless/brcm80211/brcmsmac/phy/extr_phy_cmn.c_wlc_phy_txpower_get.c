
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct brcms_phy_pub {int dummy; } ;
struct brcms_phy {int txpwroverride; int * tx_user_target; } ;



int wlc_phy_txpower_get(struct brcms_phy_pub *ppi, uint *qdbm, bool *override)
{
 struct brcms_phy *pi = (struct brcms_phy *) ppi;

 *qdbm = pi->tx_user_target[0];
 if (override != ((void*)0))
  *override = pi->txpwroverride;
 return 0;
}
