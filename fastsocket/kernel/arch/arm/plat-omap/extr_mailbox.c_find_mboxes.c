
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_mbox {int name; struct omap_mbox* next; } ;


 struct omap_mbox* mboxes ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static struct omap_mbox **find_mboxes(const char *name)
{
 struct omap_mbox **p;

 for (p = &mboxes; *p; p = &(*p)->next) {
  if (strcmp((*p)->name, name) == 0)
   break;
 }

 return p;
}
