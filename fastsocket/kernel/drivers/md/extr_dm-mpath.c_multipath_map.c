
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union map_info {int dummy; } map_info ;
struct request {int cmd_flags; } ;
struct multipath {int dummy; } ;
struct dm_target {scalar_t__ private; } ;


 int DM_MAPIO_REQUEUE ;
 int REQ_FAILFAST_TRANSPORT ;
 int clear_mapinfo (struct multipath*,union map_info*) ;
 int map_io (struct multipath*,struct request*,union map_info*,int ) ;
 scalar_t__ set_mapinfo (struct multipath*,union map_info*) ;

__attribute__((used)) static int multipath_map(struct dm_target *ti, struct request *clone,
    union map_info *map_context)
{
 int r;
 struct multipath *m = (struct multipath *) ti->private;

 if (set_mapinfo(m, map_context) < 0)

  return DM_MAPIO_REQUEUE;

 clone->cmd_flags |= REQ_FAILFAST_TRANSPORT;
 r = map_io(m, clone, map_context, 0);
 if (r < 0 || r == DM_MAPIO_REQUEUE)
  clear_mapinfo(m, map_context);

 return r;
}
