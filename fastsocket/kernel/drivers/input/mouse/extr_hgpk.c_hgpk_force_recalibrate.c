
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps2dev {int dummy; } ;
struct psmouse {scalar_t__ model; struct hgpk_data* private; struct ps2dev ps2dev; } ;
struct hgpk_data {scalar_t__ recalib_window; } ;


 scalar_t__ HGPK_MODEL_C ;
 int PSMOUSE_ACTIVATED ;
 int PSMOUSE_CMD_ENABLE ;
 int PSMOUSE_INITIALIZING ;
 scalar_t__ jiffies ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int msleep (int) ;
 scalar_t__ ps2_command (struct ps2dev*,int *,int) ;
 int psmouse_reset (struct psmouse*) ;
 int psmouse_set_state (struct psmouse*,int ) ;
 int recal_guard_time ;

__attribute__((used)) static int hgpk_force_recalibrate(struct psmouse *psmouse)
{
 struct ps2dev *ps2dev = &psmouse->ps2dev;
 struct hgpk_data *priv = psmouse->private;


 if (psmouse->model < HGPK_MODEL_C)
  return 0;


 psmouse_set_state(psmouse, PSMOUSE_INITIALIZING);


 psmouse_reset(psmouse);


 if (ps2_command(ps2dev, ((void*)0), 0xf5) ||
     ps2_command(ps2dev, ((void*)0), 0xf5) ||
     ps2_command(ps2dev, ((void*)0), 0xe6) ||
     ps2_command(ps2dev, ((void*)0), 0xf5)) {
  return -1;
 }


 msleep(150);







 if (ps2_command(ps2dev, ((void*)0), PSMOUSE_CMD_ENABLE))
  return -1;

 psmouse_set_state(psmouse, PSMOUSE_ACTIVATED);






 priv->recalib_window = jiffies + msecs_to_jiffies(recal_guard_time);

 return 0;
}
