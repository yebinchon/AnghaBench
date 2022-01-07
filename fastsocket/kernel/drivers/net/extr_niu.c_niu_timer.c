
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ expires; } ;
struct niu {TYPE_1__ timer; int dev; } ;


 int HZ ;
 int add_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 scalar_t__ netif_carrier_ok (int ) ;
 int niu_link_status (struct niu*,int*) ;
 int niu_link_status_common (struct niu*,int) ;

__attribute__((used)) static void niu_timer(unsigned long __opaque)
{
 struct niu *np = (struct niu *) __opaque;
 unsigned long off;
 int err, link_up;

 err = niu_link_status(np, &link_up);
 if (!err)
  niu_link_status_common(np, link_up);

 if (netif_carrier_ok(np->dev))
  off = 5 * HZ;
 else
  off = 1 * HZ;
 np->timer.expires = jiffies + off;

 add_timer(&np->timer);
}
