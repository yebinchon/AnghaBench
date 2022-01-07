
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct aoetgt {int minbcnt; struct aoeif* ifs; struct aoedev* d; } ;
struct aoeif {int bcnt; struct net_device* nd; } ;
struct aoedev {int dummy; } ;


 int NAOEIFS ;
 int dev_hold (struct net_device*) ;
 int pr_err (char*) ;
 int setdbcnt (struct aoedev*) ;

__attribute__((used)) static void
setifbcnt(struct aoetgt *t, struct net_device *nd, int bcnt)
{
 struct aoedev *d;
 struct aoeif *p, *e;
 int minbcnt;

 d = t->d;
 minbcnt = bcnt;
 p = t->ifs;
 e = p + NAOEIFS;
 for (; p < e; p++) {
  if (p->nd == ((void*)0))
   break;
  if (p->nd == nd) {
   p->bcnt = bcnt;
   nd = ((void*)0);
  } else if (minbcnt > p->bcnt)
   minbcnt = p->bcnt;
 }
 if (nd) {
  if (p == e) {
   pr_err("aoe: device setifbcnt failure; too many interfaces.\n");
   return;
  }
  dev_hold(nd);
  p->nd = nd;
  p->bcnt = bcnt;
 }
 t->minbcnt = minbcnt;
 setdbcnt(d);
}
