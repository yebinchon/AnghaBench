
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcms_phy_pub {int dummy; } ;
struct brcms_phy {TYPE_1__* sh; } ;
struct TYPE_2__ {int physhim; } ;


 scalar_t__ ISNPHY (struct brcms_phy*) ;
 int M_B_TSSI_0 ;
 int M_B_TSSI_1 ;
 int M_G_TSSI_0 ;
 int M_G_TSSI_1 ;
 int NULL_TSSI_W ;
 int wlapi_bmac_write_shm (int ,int ,int ) ;

void wlc_phy_clear_tssi(struct brcms_phy_pub *pih)
{
 struct brcms_phy *pi = (struct brcms_phy *) pih;

 if (ISNPHY(pi)) {
  return;
 } else {
  wlapi_bmac_write_shm(pi->sh->physhim, M_B_TSSI_0, NULL_TSSI_W);
  wlapi_bmac_write_shm(pi->sh->physhim, M_B_TSSI_1, NULL_TSSI_W);
  wlapi_bmac_write_shm(pi->sh->physhim, M_G_TSSI_0, NULL_TSSI_W);
  wlapi_bmac_write_shm(pi->sh->physhim, M_G_TSSI_1, NULL_TSSI_W);
 }
}
