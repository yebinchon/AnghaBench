
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct selector {int valid_paths; } ;
struct path_selector {scalar_t__ context; } ;
struct path_info {int list; } ;
struct dm_path {struct path_info* pscontext; } ;


 int list_move (int *,int *) ;

__attribute__((used)) static int rr_reinstate_path(struct path_selector *ps, struct dm_path *p)
{
 struct selector *s = (struct selector *) ps->context;
 struct path_info *pi = p->pscontext;

 list_move(&pi->list, &s->valid_paths);

 return 0;
}
