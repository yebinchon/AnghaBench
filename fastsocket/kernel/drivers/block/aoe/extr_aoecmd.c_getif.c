
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct aoetgt {struct aoeif* ifs; } ;
struct aoeif {struct net_device* nd; } ;


 int NAOEIFS ;

__attribute__((used)) static struct aoeif *
getif(struct aoetgt *t, struct net_device *nd)
{
 struct aoeif *p, *e;

 p = t->ifs;
 e = p + NAOEIFS;
 for (; p < e; p++)
  if (p->nd == nd)
   return p;
 return ((void*)0);
}
