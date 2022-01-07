
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; } ;
struct serio {struct serio* parent; TYPE_1__ id; } ;
struct psmouse {int (* pt_deactivate ) (struct psmouse*) ;int ps2dev; int (* cleanup ) (struct psmouse*) ;} ;


 int PSMOUSE_CMD_ENABLE ;
 scalar_t__ SERIO_PS_PSTHRU ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ps2_command (int *,int *,int ) ;
 int psmouse_activate (struct psmouse*) ;
 int psmouse_deactivate (struct psmouse*) ;
 int psmouse_mutex ;
 int psmouse_reset (struct psmouse*) ;
 struct psmouse* serio_get_drvdata (struct serio*) ;
 int stub1 (struct psmouse*) ;
 int stub2 (struct psmouse*) ;

__attribute__((used)) static void psmouse_cleanup(struct serio *serio)
{
 struct psmouse *psmouse = serio_get_drvdata(serio);
 struct psmouse *parent = ((void*)0);

 mutex_lock(&psmouse_mutex);

 if (serio->parent && serio->id.type == SERIO_PS_PSTHRU) {
  parent = serio_get_drvdata(serio->parent);
  psmouse_deactivate(parent);
 }

 psmouse_deactivate(psmouse);

 if (psmouse->cleanup)
  psmouse->cleanup(psmouse);

 psmouse_reset(psmouse);





 ps2_command(&psmouse->ps2dev, ((void*)0), PSMOUSE_CMD_ENABLE);

 if (parent) {
  if (parent->pt_deactivate)
   parent->pt_deactivate(parent);

  psmouse_activate(parent);
 }

 mutex_unlock(&psmouse_mutex);
}
