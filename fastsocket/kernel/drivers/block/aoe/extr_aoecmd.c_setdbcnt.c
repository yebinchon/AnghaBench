
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aoetgt {int minbcnt; } ;
struct aoedev {int ntargets; int maxbcnt; int aoeminor; int aoemajor; struct aoetgt** targets; } ;


 int pr_info (char*,int ,int ,int) ;

__attribute__((used)) static void
setdbcnt(struct aoedev *d)
{
 struct aoetgt **t, **e;
 int bcnt = 0;

 t = d->targets;
 e = t + d->ntargets;
 for (; t < e && *t; t++)
  if (bcnt == 0 || bcnt > (*t)->minbcnt)
   bcnt = (*t)->minbcnt;
 if (bcnt != d->maxbcnt) {
  d->maxbcnt = bcnt;
  pr_info("aoe: e%ld.%d: setting %d byte data frames\n",
   d->aoemajor, d->aoeminor, bcnt);
 }
}
