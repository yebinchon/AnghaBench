
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wan_device {scalar_t__ state; int private; } ;


 int EFAULT ;
 int ENODEV ;
 scalar_t__ WAN_UNCONFIGURED ;
 int cycx_x25_get_stats (int ) ;

__attribute__((used)) static int cycx_wan_update(struct wan_device *wandev)
{

 if (!wandev || !wandev->private)
  return -EFAULT;

 if (wandev->state == WAN_UNCONFIGURED)
  return -ENODEV;

 cycx_x25_get_stats(wandev->private);

 return 0;
}
