
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_target_io {int info; struct dm_target* ti; int io; } ;
struct dm_target {int dummy; } ;
struct clone_info {int io; TYPE_1__* md; } ;
struct TYPE_2__ {int tio_pool; } ;


 int GFP_NOIO ;
 struct dm_target_io* mempool_alloc (int ,int ) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static struct dm_target_io *alloc_tio(struct clone_info *ci,
          struct dm_target *ti)
{
 struct dm_target_io *tio = mempool_alloc(ci->md->tio_pool, GFP_NOIO);

 tio->io = ci->io;
 tio->ti = ti;
 memset(&tio->info, 0, sizeof(tio->info));

 return tio;
}
