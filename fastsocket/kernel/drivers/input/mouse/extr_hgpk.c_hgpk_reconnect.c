
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {TYPE_4__* serio; } ;
struct psmouse {TYPE_5__ ps2dev; } ;
struct TYPE_6__ {scalar_t__ event; } ;
struct TYPE_7__ {TYPE_1__ power_state; } ;
struct TYPE_8__ {TYPE_2__ power; } ;
struct TYPE_9__ {TYPE_3__ dev; } ;


 scalar_t__ PM_EVENT_ON ;
 int olpc_board (int) ;
 scalar_t__ olpc_board_at_least (int ) ;
 int psmouse_reset (struct psmouse*) ;

__attribute__((used)) static int hgpk_reconnect(struct psmouse *psmouse)
{



 if (olpc_board_at_least(olpc_board(0xb2)))
  if (psmouse->ps2dev.serio->dev.power.power_state.event !=
    PM_EVENT_ON)
   return 0;

 psmouse_reset(psmouse);

 return 0;
}
