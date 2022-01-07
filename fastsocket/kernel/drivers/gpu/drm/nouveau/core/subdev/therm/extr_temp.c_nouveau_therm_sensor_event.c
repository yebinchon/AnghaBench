
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct work_struct {int dummy; } ;
struct TYPE_2__ {int (* pause ) (struct nouveau_therm*,int) ;int (* downclock ) (struct nouveau_therm*,int) ;} ;
struct nouveau_therm_priv {TYPE_1__ emergency; } ;
struct nouveau_therm {int (* temp_get ) (struct nouveau_therm*) ;} ;
typedef enum nouveau_therm_thrs_direction { ____Placeholder_nouveau_therm_thrs_direction } nouveau_therm_thrs_direction ;
typedef enum nouveau_therm_thrs { ____Placeholder_nouveau_therm_thrs } nouveau_therm_thrs ;


 int GFP_ATOMIC ;
 int INIT_WORK (struct work_struct*,int ) ;
 int NOUVEAU_THERM_CTRL_AUTO ;


 int NOUVEAU_THERM_THRS_FALLING ;


 int NOUVEAU_THERM_THRS_RISING ;

 struct work_struct* kmalloc (int,int ) ;
 int nouveau_therm_fan_mode (struct nouveau_therm*,int ) ;
 int nouveau_therm_fan_set (struct nouveau_therm*,int,int) ;
 int nv_info (struct nouveau_therm*,char*,int,char const*) ;
 int nv_poweroff_work ;
 int schedule_work (struct work_struct*) ;
 int stub1 (struct nouveau_therm*) ;
 int stub2 (struct nouveau_therm*,int) ;
 int stub3 (struct nouveau_therm*,int) ;

void nouveau_therm_sensor_event(struct nouveau_therm *therm,
           enum nouveau_therm_thrs thrs,
           enum nouveau_therm_thrs_direction dir)
{
 struct nouveau_therm_priv *priv = (void *)therm;
 bool active;
 const char *thresolds[] = {
  "fanboost", "downclock", "critical", "shutdown"
 };
 int temperature = therm->temp_get(therm);

 if (thrs < 0 || thrs > 3)
  return;

 if (dir == NOUVEAU_THERM_THRS_FALLING)
  nv_info(therm, "temperature (%i C) went below the '%s' threshold\n",
   temperature, thresolds[thrs]);
 else
  nv_info(therm, "temperature (%i C) hit the '%s' threshold\n",
   temperature, thresolds[thrs]);

 active = (dir == NOUVEAU_THERM_THRS_RISING);
 switch (thrs) {
 case 130:
  if (active) {
   nouveau_therm_fan_set(therm, 1, 100);
   nouveau_therm_fan_mode(therm, NOUVEAU_THERM_CTRL_AUTO);
  }
  break;
 case 131:
  if (priv->emergency.downclock)
   priv->emergency.downclock(therm, active);
  break;
 case 132:
  if (priv->emergency.pause)
   priv->emergency.pause(therm, active);
  break;
 case 128:
  if (active) {
   struct work_struct *work;

   work = kmalloc(sizeof(*work), GFP_ATOMIC);
   if (work) {
    INIT_WORK(work, nv_poweroff_work);
    schedule_work(work);
   }
  }
  break;
 case 129:
  break;
 }

}
