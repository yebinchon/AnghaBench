
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps2dev {int dummy; } ;
struct psmouse {scalar_t__ model; struct ps2dev ps2dev; } ;


 scalar_t__ HGPK_MODEL_D ;
 int PSMOUSE_ACTIVATED ;
 int PSMOUSE_CMD_DISABLE ;
 int PSMOUSE_CMD_ENABLE ;
 int PSMOUSE_IGNORE ;
 int PSMOUSE_INITIALIZING ;
 int hgpk_dbg (struct psmouse*,char*) ;
 int msleep (int) ;
 scalar_t__ ps2_command (struct ps2dev*,int *,int) ;
 int ps2_sendbyte (struct ps2dev*,int,int) ;
 int psmouse_reset (struct psmouse*) ;
 int psmouse_set_state (struct psmouse*,int ) ;

__attribute__((used)) static int hgpk_toggle_power(struct psmouse *psmouse, int enable)
{
 struct ps2dev *ps2dev = &psmouse->ps2dev;
 int timeo;


 if (psmouse->model < HGPK_MODEL_D)
  return 0;

 if (enable) {
  psmouse_set_state(psmouse, PSMOUSE_INITIALIZING);
  for (timeo = 20; timeo > 0; timeo--) {
   if (!ps2_sendbyte(&psmouse->ps2dev,
     PSMOUSE_CMD_DISABLE, 20))
    break;
   msleep(50);
  }

  psmouse_reset(psmouse);


  ps2_command(&psmouse->ps2dev, ((void*)0), PSMOUSE_CMD_ENABLE);
  psmouse_set_state(psmouse, PSMOUSE_ACTIVATED);

 } else {
  hgpk_dbg(psmouse, "Powering off touchpad.\n");
  psmouse_set_state(psmouse, PSMOUSE_IGNORE);

  if (ps2_command(ps2dev, ((void*)0), 0xec) ||
      ps2_command(ps2dev, ((void*)0), 0xec) ||
      ps2_command(ps2dev, ((void*)0), 0xea)) {
   return -1;
  }


  ps2_sendbyte(&psmouse->ps2dev, 0xec, 20);
 }

 return 0;
}
