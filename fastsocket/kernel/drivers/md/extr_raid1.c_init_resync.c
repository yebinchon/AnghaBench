
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r1conf {scalar_t__ next_resync; int r1buf_pool; int poolinfo; } ;


 int BUG_ON (int ) ;
 int ENOMEM ;
 int RESYNC_BLOCK_SIZE ;
 int RESYNC_WINDOW ;
 int mempool_create (int,int ,int ,int ) ;
 int r1buf_pool_alloc ;
 int r1buf_pool_free ;

__attribute__((used)) static int init_resync(struct r1conf *conf)
{
 int buffs;

 buffs = RESYNC_WINDOW / RESYNC_BLOCK_SIZE;
 BUG_ON(conf->r1buf_pool);
 conf->r1buf_pool = mempool_create(buffs, r1buf_pool_alloc, r1buf_pool_free,
       conf->poolinfo);
 if (!conf->r1buf_pool)
  return -ENOMEM;
 conf->next_resync = 0;
 return 0;
}
