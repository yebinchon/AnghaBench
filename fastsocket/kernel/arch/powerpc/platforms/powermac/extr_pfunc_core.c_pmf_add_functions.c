
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct property {char* name; int length; int value; struct property* next; } ;
struct pmf_device {TYPE_1__* node; } ;
struct TYPE_2__ {struct property* properties; } ;


 char* PP_PREFIX ;
 scalar_t__ pmf_add_function_prop (struct pmf_device*,void*,char*,int ,int) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int const) ;

__attribute__((used)) static int pmf_add_functions(struct pmf_device *dev, void *driverdata)
{
 struct property *pp;

 const int plen = strlen("platform-do-");
 int count = 0;

 for (pp = dev->node->properties; pp != 0; pp = pp->next) {
  char *name;
  if (strncmp(pp->name, "platform-do-", plen) != 0)
   continue;
  name = pp->name + plen;
  if (strlen(name) && pp->length >= 12)
   count += pmf_add_function_prop(dev, driverdata, name,
             pp->value, pp->length);
 }
 return count;
}
