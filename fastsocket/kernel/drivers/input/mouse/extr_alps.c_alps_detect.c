
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {char* vendor; char* name; int model; } ;
struct alps_data {int flags; int proto_version; } ;


 int ALPS_DUALPOINT ;
 scalar_t__ alps_identify (struct psmouse*,struct alps_data*) ;

int alps_detect(struct psmouse *psmouse, bool set_properties)
{
 struct alps_data dummy;

 if (alps_identify(psmouse, &dummy) < 0)
  return -1;

 if (set_properties) {
  psmouse->vendor = "ALPS";
  psmouse->name = dummy.flags & ALPS_DUALPOINT ?
    "DualPoint TouchPad" : "GlidePoint";
  psmouse->model = dummy.proto_version << 8;
 }
 return 0;
}
