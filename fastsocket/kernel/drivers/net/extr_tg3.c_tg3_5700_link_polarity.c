
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tg3 {scalar_t__ led_ctrl; int phy_id; } ;


 scalar_t__ LED_CTRL_MODE_PHY_2 ;
 scalar_t__ SPEED_10 ;
 int TG3_PHY_ID_BCM5411 ;
 int TG3_PHY_ID_MASK ;

__attribute__((used)) static int tg3_5700_link_polarity(struct tg3 *tp, u32 speed)
{
 if (tp->led_ctrl == LED_CTRL_MODE_PHY_2)
  return 1;
 else if ((tp->phy_id & TG3_PHY_ID_MASK) == TG3_PHY_ID_BCM5411) {
  if (speed != SPEED_10)
   return 1;
 } else if (speed == SPEED_10)
  return 1;

 return 0;
}
