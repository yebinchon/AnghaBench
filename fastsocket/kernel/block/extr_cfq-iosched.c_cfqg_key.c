
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfq_rb_root {scalar_t__ min_vdisktime; } ;
struct cfq_group {scalar_t__ vdisktime; } ;
typedef scalar_t__ s64 ;



__attribute__((used)) static inline s64
cfqg_key(struct cfq_rb_root *st, struct cfq_group *cfqg)
{
 return cfqg->vdisktime - st->min_vdisktime;
}
