
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link_config {unsigned int supported; int requested_fc; int fc; int advertising; int autoneg; int duplex; int requested_duplex; int speed; int requested_speed; } ;


 int AUTONEG_DISABLE ;
 int AUTONEG_ENABLE ;
 int DUPLEX_INVALID ;
 int PAUSE_AUTONEG ;
 int PAUSE_RX ;
 int PAUSE_TX ;
 int SPEED_INVALID ;
 int SUPPORTED_Autoneg ;

__attribute__((used)) static void init_link_config(struct link_config *lc, unsigned int caps)
{
 lc->supported = caps;
 lc->requested_speed = lc->speed = SPEED_INVALID;
 lc->requested_duplex = lc->duplex = DUPLEX_INVALID;
 lc->requested_fc = lc->fc = PAUSE_RX | PAUSE_TX;
 if (lc->supported & SUPPORTED_Autoneg) {
  lc->advertising = lc->supported;
  lc->autoneg = AUTONEG_ENABLE;
  lc->requested_fc |= PAUSE_AUTONEG;
 } else {
  lc->advertising = 0;
  lc->autoneg = AUTONEG_DISABLE;
 }
}
