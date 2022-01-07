
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct nvbios_therm_sensor {int thrs_critical; int thrs_fan_boost; int thrs_shutdown; int thrs_down_clock; } ;
struct TYPE_2__ {int alarm_program_lock; } ;
struct nouveau_therm_priv {TYPE_1__ sensor; struct nvbios_therm_sensor bios_sensor; } ;
struct nouveau_therm {int dummy; } ;
struct nouveau_subdev {int dummy; } ;


 int NOUVEAU_THERM_THRS_CRITICAL ;
 int NOUVEAU_THERM_THRS_DOWNCLOCK ;
 int NOUVEAU_THERM_THRS_FANBOOST ;
 int NOUVEAU_THERM_THRS_SHUTDOWN ;
 struct nouveau_therm* nouveau_therm (struct nouveau_subdev*) ;
 int nv50_therm_threshold_hyst_emulation (struct nouveau_therm*,int,int,int *,int ) ;
 int nv_error (struct nouveau_therm*,char*,int) ;
 int nv_rd32 (struct nouveau_therm*,int) ;
 int nv_wr32 (struct nouveau_therm*,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
nv50_therm_intr(struct nouveau_subdev *subdev)
{
 struct nouveau_therm *therm = nouveau_therm(subdev);
 struct nouveau_therm_priv *priv = (void *)therm;
 struct nvbios_therm_sensor *sensor = &priv->bios_sensor;
 unsigned long flags;
 uint32_t intr;

 spin_lock_irqsave(&priv->sensor.alarm_program_lock, flags);

 intr = nv_rd32(therm, 0x20100);


 if (intr & 0x002) {
  nv50_therm_threshold_hyst_emulation(therm, 0x20414, 24,
        &sensor->thrs_down_clock,
        NOUVEAU_THERM_THRS_DOWNCLOCK);
  intr &= ~0x002;
 }


 if (intr & 0x004) {
  nv50_therm_threshold_hyst_emulation(therm, 0x20480, 20,
         &sensor->thrs_shutdown,
         NOUVEAU_THERM_THRS_SHUTDOWN);
  intr &= ~0x004;
 }


 if (intr & 0x008) {
  nv50_therm_threshold_hyst_emulation(therm, 0x204c4, 21,
         &sensor->thrs_fan_boost,
         NOUVEAU_THERM_THRS_FANBOOST);
  intr &= ~0x008;
 }


 if (intr & 0x010) {
  nv50_therm_threshold_hyst_emulation(therm, 0x204c0, 22,
         &sensor->thrs_critical,
         NOUVEAU_THERM_THRS_CRITICAL);
  intr &= ~0x010;
 }

 if (intr)
  nv_error(therm, "unhandled intr 0x%08x\n", intr);


 nv_wr32(therm, 0x20100, 0xffffffff);
 nv_wr32(therm, 0x1100, 0x10000);

 spin_unlock_irqrestore(&priv->sensor.alarm_program_lock, flags);
}
