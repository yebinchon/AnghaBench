
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stripe_head {int dummy; } ;
struct r5dev {int dummy; } ;
struct r5conf {char** cache_name; int level; size_t active_name; int pool_size; struct kmem_cache* slab_cache; TYPE_1__* mddev; int previous_raid_disks; int raid_disks; } ;
struct kmem_cache {int dummy; } ;
struct TYPE_2__ {scalar_t__ gendisk; } ;


 int grow_one_stripe (struct r5conf*) ;
 struct kmem_cache* kmem_cache_create (char*,int,int ,int ,int *) ;
 int max (int ,int ) ;
 char* mdname (TYPE_1__*) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static int grow_stripes(struct r5conf *conf, int num)
{
 struct kmem_cache *sc;
 int devs = max(conf->raid_disks, conf->previous_raid_disks);

 if (conf->mddev->gendisk)
  sprintf(conf->cache_name[0],
   "raid%d-%s", conf->level, mdname(conf->mddev));
 else
  sprintf(conf->cache_name[0],
   "raid%d-%p", conf->level, conf->mddev);
 sprintf(conf->cache_name[1], "%s-alt", conf->cache_name[0]);

 conf->active_name = 0;
 sc = kmem_cache_create(conf->cache_name[conf->active_name],
          sizeof(struct stripe_head)+(devs-1)*sizeof(struct r5dev),
          0, 0, ((void*)0));
 if (!sc)
  return 1;
 conf->slab_cache = sc;
 conf->pool_size = devs;
 while (num--)
  if (!grow_one_stripe(conf))
   return 1;
 return 0;
}
