
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {char* vendor; char* name; } ;



__attribute__((used)) static int ps2bare_detect(struct psmouse *psmouse, bool set_properties)
{
 if (set_properties) {
  if (!psmouse->vendor) psmouse->vendor = "Generic";
  if (!psmouse->name) psmouse->name = "Mouse";
 }

 return 0;
}
