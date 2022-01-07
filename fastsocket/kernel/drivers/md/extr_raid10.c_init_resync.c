
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int raid_disks; } ;
struct r10conf {int have_replacement; scalar_t__ next_resync; int r10buf_pool; TYPE_2__* mirrors; TYPE_1__ geo; } ;
struct TYPE_4__ {scalar_t__ replacement; } ;


 int BUG_ON (int ) ;
 int ENOMEM ;
 int RESYNC_BLOCK_SIZE ;
 int RESYNC_WINDOW ;
 int mempool_create (int,int ,int ,struct r10conf*) ;
 int r10buf_pool_alloc ;
 int r10buf_pool_free ;

__attribute__((used)) static int init_resync(struct r10conf *conf)
{
 int buffs;
 int i;

 buffs = RESYNC_WINDOW / RESYNC_BLOCK_SIZE;
 BUG_ON(conf->r10buf_pool);
 conf->have_replacement = 0;
 for (i = 0; i < conf->geo.raid_disks; i++)
  if (conf->mirrors[i].replacement)
   conf->have_replacement = 1;
 conf->r10buf_pool = mempool_create(buffs, r10buf_pool_alloc, r10buf_pool_free, conf);
 if (!conf->r10buf_pool)
  return -ENOMEM;
 conf->next_resync = 0;
 return 0;
}
