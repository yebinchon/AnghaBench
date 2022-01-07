
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


union map_info {struct dm_mpath_io* ptr; } ;
struct request {int dummy; } ;
struct pgpath {int path; TYPE_1__* pg; } ;
struct path_selector {TYPE_2__* type; } ;
struct multipath {int dummy; } ;
struct dm_target {struct multipath* private; } ;
struct dm_mpath_io {int nr_bytes; struct pgpath* pgpath; } ;
struct TYPE_4__ {int (* end_io ) (struct path_selector*,int *,int ) ;} ;
struct TYPE_3__ {struct path_selector ps; } ;


 int BUG_ON (int) ;
 int clear_mapinfo (struct multipath*,union map_info*) ;
 int do_end_io (struct multipath*,struct request*,int,struct dm_mpath_io*) ;
 int stub1 (struct path_selector*,int *,int ) ;

__attribute__((used)) static int multipath_end_io(struct dm_target *ti, struct request *clone,
       int error, union map_info *map_context)
{
 struct multipath *m = ti->private;
 struct dm_mpath_io *mpio = map_context->ptr;
 struct pgpath *pgpath;
 struct path_selector *ps;
 int r;

 BUG_ON(!mpio);

 r = do_end_io(m, clone, error, mpio);
 pgpath = mpio->pgpath;
 if (pgpath) {
  ps = &pgpath->pg->ps;
  if (ps->type->end_io)
   ps->type->end_io(ps, &pgpath->path, mpio->nr_bytes);
 }
 clear_mapinfo(m, map_context);

 return r;
}
