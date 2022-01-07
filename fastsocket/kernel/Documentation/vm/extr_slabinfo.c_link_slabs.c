
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slabinfo {int refs; int name; } ;
struct aliasinfo {int ref; struct slabinfo* slab; } ;


 int aliases ;
 struct aliasinfo* aliasinfo ;
 int fatal (char*,int ) ;
 struct slabinfo* slabinfo ;
 int slabs ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static void link_slabs(void)
{
 struct aliasinfo *a;
 struct slabinfo *s;

 for (a = aliasinfo; a < aliasinfo + aliases; a++) {

  for (s = slabinfo; s < slabinfo + slabs; s++)
   if (strcmp(a->ref, s->name) == 0) {
    a->slab = s;
    s->refs++;
    break;
   }
  if (s == slabinfo + slabs)
   fatal("Unresolved alias %s\n", a->ref);
 }
}
