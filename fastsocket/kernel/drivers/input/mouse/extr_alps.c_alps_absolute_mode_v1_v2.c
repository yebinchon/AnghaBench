
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps2dev {int dummy; } ;
struct psmouse {struct ps2dev ps2dev; } ;


 int PSMOUSE_CMD_DISABLE ;
 int PSMOUSE_CMD_ENABLE ;
 int PSMOUSE_CMD_SETPOLL ;
 int ps2_command (struct ps2dev*,int *,int ) ;

__attribute__((used)) static int alps_absolute_mode_v1_v2(struct psmouse *psmouse)
{
 struct ps2dev *ps2dev = &psmouse->ps2dev;


 if (ps2_command(ps2dev, ((void*)0), PSMOUSE_CMD_DISABLE) ||
     ps2_command(ps2dev, ((void*)0), PSMOUSE_CMD_DISABLE) ||
     ps2_command(ps2dev, ((void*)0), PSMOUSE_CMD_DISABLE) ||
     ps2_command(ps2dev, ((void*)0), PSMOUSE_CMD_DISABLE) ||
     ps2_command(ps2dev, ((void*)0), PSMOUSE_CMD_ENABLE))
  return -1;





 return ps2_command(&psmouse->ps2dev, ((void*)0), PSMOUSE_CMD_SETPOLL);
}
