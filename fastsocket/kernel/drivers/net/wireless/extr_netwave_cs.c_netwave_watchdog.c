
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int trans_start; int name; } ;


 int DEBUG (int,char*,int ) ;
 int jiffies ;
 int netif_wake_queue (struct net_device*) ;
 int netwave_reset (struct net_device*) ;

__attribute__((used)) static void netwave_watchdog(struct net_device *dev) {

    DEBUG(1, "%s: netwave_watchdog: watchdog timer expired\n", dev->name);
    netwave_reset(dev);
    dev->trans_start = jiffies;
    netif_wake_queue(dev);
}
