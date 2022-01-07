
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct selector {int failed_paths; } ;
struct path_selector {struct selector* context; } ;
struct path_info {int list; } ;
struct dm_path {struct path_info* pscontext; } ;


 int list_move (int *,int *) ;

__attribute__((used)) static void ql_fail_path(struct path_selector *ps, struct dm_path *path)
{
 struct selector *s = ps->context;
 struct path_info *pi = path->pscontext;

 list_move(&pi->list, &s->failed_paths);
}
