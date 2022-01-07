
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* type; } ;
struct priority_group {TYPE_2__ ps; } ;
struct multipath {int current_pgpath; struct priority_group* current_pg; int repeat_count; } ;
struct dm_path {int dummy; } ;
struct TYPE_3__ {struct dm_path* (* select_path ) (TYPE_2__*,int *,size_t) ;} ;


 int ENXIO ;
 int __switch_pg (struct multipath*,int ) ;
 int path_to_pgpath (struct dm_path*) ;
 struct dm_path* stub1 (TYPE_2__*,int *,size_t) ;

__attribute__((used)) static int __choose_path_in_pg(struct multipath *m, struct priority_group *pg,
          size_t nr_bytes)
{
 struct dm_path *path;

 path = pg->ps.type->select_path(&pg->ps, &m->repeat_count, nr_bytes);
 if (!path)
  return -ENXIO;

 m->current_pgpath = path_to_pgpath(path);

 if (m->current_pg != pg)
  __switch_pg(m, m->current_pgpath);

 return 0;
}
