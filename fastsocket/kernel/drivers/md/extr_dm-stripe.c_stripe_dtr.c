
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stripe_c {unsigned int stripes; TYPE_1__* stripe; } ;
struct dm_target {scalar_t__ private; } ;
struct TYPE_2__ {int dev; } ;


 int dm_put_device (struct dm_target*,int ) ;
 int flush_workqueue (int ) ;
 int kfree (struct stripe_c*) ;
 int kstriped ;

__attribute__((used)) static void stripe_dtr(struct dm_target *ti)
{
 unsigned int i;
 struct stripe_c *sc = (struct stripe_c *) ti->private;

 for (i = 0; i < sc->stripes; i++)
  dm_put_device(ti, sc->stripe[i].dev);

 flush_workqueue(kstriped);
 kfree(sc);
}
