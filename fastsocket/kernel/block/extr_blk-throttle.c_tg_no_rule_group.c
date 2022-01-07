
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct throtl_grp {int* bps; int* iops; } ;



__attribute__((used)) static bool tg_no_rule_group(struct throtl_grp *tg, bool rw) {
 if (tg->bps[rw] == -1 && tg->iops[rw] == -1)
  return 1;
 return 0;
}
