
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ expires; } ;
struct strip {int dev; TYPE_1__ idle_timer; } ;


 int HZ ;
 int add_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 int netif_wake_queue (int ) ;

__attribute__((used)) static void strip_unlock(struct strip *strip_info)
{



 strip_info->idle_timer.expires = jiffies + 1 * HZ;
 add_timer(&strip_info->idle_timer);
 netif_wake_queue(strip_info->dev);
}
