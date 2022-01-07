
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct throtl_rb_root {int min_disptime; } ;
struct throtl_grp {int disptime; } ;


 struct throtl_grp* throtl_rb_first (struct throtl_rb_root*) ;

__attribute__((used)) static void update_min_dispatch_time(struct throtl_rb_root *st)
{
 struct throtl_grp *tg;

 tg = throtl_rb_first(st);
 if (!tg)
  return;

 st->min_disptime = tg->disptime;
}
