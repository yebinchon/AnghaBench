
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slabinfo {int dummy; } ;
struct aliasinfo {int name; struct slabinfo* slab; } ;


 int aliases ;
 struct aliasinfo* aliasinfo ;
 scalar_t__ strlen (int ) ;
 scalar_t__ strncmp (int ,char*,int) ;

__attribute__((used)) static struct aliasinfo *find_one_alias(struct slabinfo *find)
{
 struct aliasinfo *a;
 struct aliasinfo *best = ((void*)0);

 for(a = aliasinfo;a < aliasinfo + aliases; a++) {
  if (a->slab == find &&
   (!best || strlen(best->name) < strlen(a->name))) {
    best = a;
    if (strncmp(a->name,"kmall", 5) == 0)
     return best;
   }
 }
 return best;
}
