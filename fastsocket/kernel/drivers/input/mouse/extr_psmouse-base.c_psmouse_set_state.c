
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int serio; } ;
struct psmouse {TYPE_1__ ps2dev; } ;
typedef enum psmouse_state { ____Placeholder_psmouse_state } psmouse_state ;


 int __psmouse_set_state (struct psmouse*,int) ;
 int serio_continue_rx (int ) ;
 int serio_pause_rx (int ) ;

void psmouse_set_state(struct psmouse *psmouse, enum psmouse_state new_state)
{
 serio_pause_rx(psmouse->ps2dev.serio);
 __psmouse_set_state(psmouse, new_state);
 serio_continue_rx(psmouse->ps2dev.serio);
}
