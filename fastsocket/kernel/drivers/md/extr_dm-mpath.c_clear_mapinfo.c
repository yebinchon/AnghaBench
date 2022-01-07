
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union map_info {struct dm_mpath_io* ptr; } ;
struct multipath {int mpio_pool; } ;
struct dm_mpath_io {int dummy; } ;


 int mempool_free (struct dm_mpath_io*,int ) ;

__attribute__((used)) static void clear_mapinfo(struct multipath *m, union map_info *info)
{
 struct dm_mpath_io *mpio = info->ptr;

 info->ptr = ((void*)0);
 mempool_free(mpio, m->mpio_pool);
}
