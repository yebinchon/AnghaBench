
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct aliasinfo {char* name; TYPE_1__* slab; } ;
struct TYPE_2__ {int refs; char* name; } ;


 int aliases ;
 struct aliasinfo* aliasinfo ;
 int link_slabs () ;
 int printf (char*,...) ;
 int show_inverted ;
 int show_single_ref ;
 int sort_aliases () ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void alias(void)
{
 struct aliasinfo *a;
 char *active = ((void*)0);

 sort_aliases();
 link_slabs();

 for(a = aliasinfo; a < aliasinfo + aliases; a++) {

  if (!show_single_ref && a->slab->refs == 1)
   continue;

  if (!show_inverted) {
   if (active) {
    if (strcmp(a->slab->name, active) == 0) {
     printf(" %s", a->name);
     continue;
    }
   }
   printf("\n%-12s <- %s", a->slab->name, a->name);
   active = a->slab->name;
  }
  else
   printf("%-20s -> %s\n", a->name, a->slab->name);
 }
 if (active)
  printf("\n");
}
