
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct can_bittiming {int dummy; } ;


 int EINVAL ;
 int dev_err (int ,char*) ;

__attribute__((used)) static int can_calc_bittiming(struct net_device *dev, struct can_bittiming *bt)
{
 dev_err(dev->dev.parent, "bit-timing calculation not available\n");
 return -EINVAL;
}
