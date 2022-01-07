
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ ulong ;
struct TYPE_2__ {scalar_t__ expires; } ;
struct aoedev {int flags; TYPE_1__ timer; } ;


 int DEVFL_TKILL ;
 scalar_t__ HZ ;
 int add_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;

__attribute__((used)) static void
dummy_timer(ulong vp)
{
 struct aoedev *d;

 d = (struct aoedev *)vp;
 if (d->flags & DEVFL_TKILL)
  return;
 d->timer.expires = jiffies + HZ;
 add_timer(&d->timer);
}
