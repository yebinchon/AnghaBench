
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cfq_rb_root {int min_vdisktime; scalar_t__ left; scalar_t__ active; } ;
struct cfq_group {int vdisktime; } ;


 int max_vdisktime (int ,int ) ;
 int min_vdisktime (int ,int ) ;
 struct cfq_group* rb_entry_cfqg (scalar_t__) ;

__attribute__((used)) static void update_min_vdisktime(struct cfq_rb_root *st)
{
 u64 vdisktime = st->min_vdisktime;
 struct cfq_group *cfqg;

 if (st->active) {
  cfqg = rb_entry_cfqg(st->active);
  vdisktime = cfqg->vdisktime;
 }

 if (st->left) {
  cfqg = rb_entry_cfqg(st->left);
  vdisktime = min_vdisktime(vdisktime, cfqg->vdisktime);
 }

 st->min_vdisktime = max_vdisktime(st->min_vdisktime, vdisktime);
}
