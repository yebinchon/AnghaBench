
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_wldev {int dummy; } ;


 int EINVAL ;
 int b43_gphy_channel_switch (struct b43_wldev*,unsigned int,int ) ;

__attribute__((used)) static int b43_gphy_op_switch_channel(struct b43_wldev *dev,
          unsigned int new_channel)
{
 if ((new_channel < 1) || (new_channel > 14))
  return -EINVAL;
 b43_gphy_channel_switch(dev, new_channel, 0);

 return 0;
}
