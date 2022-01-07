
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint ;
struct brcms_c_info {TYPE_1__* band; } ;
struct TYPE_2__ {int pi; } ;


 int BRCMS_TXPWR_DB_FACTOR ;
 int wlc_phy_txpower_get (int ,int*,int*) ;

int brcms_c_get_tx_power(struct brcms_c_info *wlc)
{
 uint qdbm;
 bool override;

 wlc_phy_txpower_get(wlc->band->pi, &qdbm, &override);


 return (int)(qdbm / BRCMS_TXPWR_DB_FACTOR);
}
