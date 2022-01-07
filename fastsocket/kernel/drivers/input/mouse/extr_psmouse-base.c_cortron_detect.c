
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct psmouse {char* vendor; char* name; TYPE_1__* dev; } ;
struct TYPE_2__ {int keybit; } ;


 int BTN_SIDE ;
 int __set_bit (int ,int ) ;

__attribute__((used)) static int cortron_detect(struct psmouse *psmouse, bool set_properties)
{
 if (set_properties) {
  psmouse->vendor = "Cortron";
  psmouse->name = "PS/2 Trackball";
  __set_bit(BTN_SIDE, psmouse->dev->keybit);
 }

 return 0;
}
