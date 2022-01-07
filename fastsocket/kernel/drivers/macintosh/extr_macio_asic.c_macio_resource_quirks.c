
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int flags; int end; int start; } ;
struct device_node {int type; int name; } ;


 int IORESOURCE_MEM ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int macio_resource_quirks(struct device_node *np, struct resource *res,
     int index)
{

 if ((res->flags & IORESOURCE_MEM) == 0)
  return 0;


 if (index == 0 && !strcmp(np->name, "gc"))
  res->end = res->start + 0x1ffff;


 if (index >= 2 && !strcmp(np->name, "radio"))
  return 1;



 if ((res->start & 0x0001f000) == 0x00008000)
  res->end = res->start + 0xff;






 if (!strcmp(np->name, "escc"))
  return 1;


 if (index >= 3 && !(strcmp(np->name, "ch-a") &&
       strcmp(np->name, "ch-b")))
  return 1;


 if (index > 0 && !strcmp(np->name, "media-bay"))
  return 1;


 if (!(strcmp(np->name, "IDE") && strcmp(np->name, "ATA") &&
       strcmp(np->type, "ide") && strcmp(np->type, "ata"))) {
  if (index == 0 && (res->end - res->start) > 0xfff)
   res->end = res->start + 0xfff;
  if (index == 1 && (res->end - res->start) > 0xff)
   res->end = res->start + 0xff;
 }
 return 0;
}
