
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct throtl_grp {int ref; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static inline struct throtl_grp *throtl_ref_get_tg(struct throtl_grp *tg)
{
 atomic_inc(&tg->ref);
 return tg;
}
