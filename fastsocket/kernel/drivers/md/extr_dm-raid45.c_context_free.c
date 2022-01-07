
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int rh; } ;
struct raid_set {TYPE_2__ recover; int sc; TYPE_1__* dev; int ti; } ;
struct TYPE_3__ {int dev; } ;


 int dm_put_device (int ,int ) ;
 int dm_region_hash_destroy (int ) ;
 int kfree (struct raid_set*) ;
 int sc_exit (int *) ;

__attribute__((used)) static void context_free(struct raid_set *rs, unsigned p)
{
 while (p--)
  dm_put_device(rs->ti, rs->dev[p].dev);

 sc_exit(&rs->sc);
 dm_region_hash_destroy(rs->recover.rh);
 kfree(rs);
}
