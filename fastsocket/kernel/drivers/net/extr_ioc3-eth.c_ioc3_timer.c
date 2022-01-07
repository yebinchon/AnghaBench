
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ expires; } ;
struct ioc3_private {TYPE_1__ ioc3_timer; int mii; } ;


 int HZ ;
 int add_timer (TYPE_1__*) ;
 int ioc3_setup_duplex (struct ioc3_private*) ;
 scalar_t__ jiffies ;
 int mii_check_media (int *,int,int ) ;

__attribute__((used)) static void ioc3_timer(unsigned long data)
{
 struct ioc3_private *ip = (struct ioc3_private *) data;


 mii_check_media(&ip->mii, 1, 0);
 ioc3_setup_duplex(ip);

 ip->ioc3_timer.expires = jiffies + ((12 * HZ)/10);
 add_timer(&ip->ioc3_timer);
}
