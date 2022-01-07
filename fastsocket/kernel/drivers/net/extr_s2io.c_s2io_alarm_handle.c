
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s2io_nic {int alarm_timer; struct net_device* dev; } ;
struct net_device {int dummy; } ;


 int HZ ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int s2io_handle_errors (struct net_device*) ;

__attribute__((used)) static void
s2io_alarm_handle(unsigned long data)
{
 struct s2io_nic *sp = (struct s2io_nic *)data;
 struct net_device *dev = sp->dev;

 s2io_handle_errors(dev);
 mod_timer(&sp->alarm_timer, jiffies + HZ / 2);
}
