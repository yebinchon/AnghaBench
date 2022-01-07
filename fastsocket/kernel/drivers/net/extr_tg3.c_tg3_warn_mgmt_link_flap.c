
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tg3 {int dev; } ;


 int ENABLE_ASF ;
 int netdev_warn (int ,char*) ;
 scalar_t__ tg3_flag (struct tg3*,int ) ;

__attribute__((used)) static void tg3_warn_mgmt_link_flap(struct tg3 *tp)
{
 if (tg3_flag(tp, ENABLE_ASF))
  netdev_warn(tp->dev,
       "Management side-band traffic will be interrupted during phy settings change\n");
}
