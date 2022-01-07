
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* serio; } ;
struct psmouse {char* vendor; char* name; TYPE_2__ ps2dev; } ;
struct TYPE_3__ {int phys; } ;


 scalar_t__ desired_serio_phys ;
 int dmi_check_system (int ) ;
 int lifebook_dmi_table ;
 scalar_t__ strcmp (int ,scalar_t__) ;

int lifebook_detect(struct psmouse *psmouse, bool set_properties)
{
        if (!dmi_check_system(lifebook_dmi_table))
                return -1;

 if (desired_serio_phys &&
     strcmp(psmouse->ps2dev.serio->phys, desired_serio_phys))
  return -1;

 if (set_properties) {
  psmouse->vendor = "Fujitsu";
  psmouse->name = "Lifebook TouchScreen";
 }

        return 0;
}
