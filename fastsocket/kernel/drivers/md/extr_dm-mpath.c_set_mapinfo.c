
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union map_info {struct dm_mpath_io* ptr; } ;
struct multipath {int mpio_pool; } ;
struct dm_mpath_io {int dummy; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 struct dm_mpath_io* mempool_alloc (int ,int ) ;
 int memset (struct dm_mpath_io*,int ,int) ;

__attribute__((used)) static int set_mapinfo(struct multipath *m, union map_info *info)
{
 struct dm_mpath_io *mpio;

 mpio = mempool_alloc(m->mpio_pool, GFP_ATOMIC);
 if (!mpio)
  return -ENOMEM;

 memset(mpio, 0, sizeof(*mpio));
 info->ptr = mpio;

 return 0;
}
