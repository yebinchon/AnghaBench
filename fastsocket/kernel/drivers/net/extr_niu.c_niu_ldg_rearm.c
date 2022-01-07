
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct niu_ldg {int ldg_num; int timer; } ;
struct niu {int dummy; } ;


 int LDG_IMGMT (int ) ;
 int LDG_IMGMT_ARM ;
 int nw64 (int ,int ) ;

__attribute__((used)) static void niu_ldg_rearm(struct niu *np, struct niu_ldg *lp, int on)
{
 u64 val = (u64) lp->timer;

 if (on)
  val |= LDG_IMGMT_ARM;

 nw64(LDG_IMGMT(lp->ldg_num), val);
}
