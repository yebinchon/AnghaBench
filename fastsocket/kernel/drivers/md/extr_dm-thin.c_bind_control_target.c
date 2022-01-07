
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; } ;
struct pool_c {int low_water_blocks; TYPE_1__ adjusted_pf; } ;
struct pool {int low_water_blocks; TYPE_1__ pf; struct dm_target* ti; } ;
struct dm_target {struct pool_c* private; } ;
typedef enum pool_mode { ____Placeholder_pool_mode } pool_mode ;


 int get_pool_mode (struct pool*) ;
 int set_pool_mode (struct pool*,int) ;

__attribute__((used)) static int bind_control_target(struct pool *pool, struct dm_target *ti)
{
 struct pool_c *pt = ti->private;




 enum pool_mode old_mode = get_pool_mode(pool);
 enum pool_mode new_mode = pt->adjusted_pf.mode;






 pt->adjusted_pf.mode = old_mode;

 pool->ti = ti;
 pool->pf = pt->adjusted_pf;
 pool->low_water_blocks = pt->low_water_blocks;

 set_pool_mode(pool, new_mode);

 return 0;
}
