
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long data; int * function; scalar_t__ expires; } ;
struct ioc3_private {TYPE_1__ ioc3_timer; } ;


 int HZ ;
 int add_timer (TYPE_1__*) ;
 int ioc3_timer ;
 scalar_t__ jiffies ;

__attribute__((used)) static void ioc3_mii_start(struct ioc3_private *ip)
{
 ip->ioc3_timer.expires = jiffies + (12 * HZ)/10;
 ip->ioc3_timer.data = (unsigned long) ip;
 ip->ioc3_timer.function = &ioc3_timer;
 add_timer(&ip->ioc3_timer);
}
