
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {char* name; int type; int * ops; } ;
struct smu_fan_control {int fan_type; TYPE_1__ ctrl; int reg; int max; int min; } ;
struct device_node {int dummy; } ;
typedef int s32 ;


 int GFP_KERNEL ;
 int WF_CONTROL_PWM_FAN ;
 int WF_CONTROL_RPM_FAN ;
 int kfree (struct smu_fan_control*) ;
 struct smu_fan_control* kmalloc (int,int ) ;
 void* of_get_property (struct device_node*,char*,int *) ;
 int smu_fan_ops ;
 int strcmp (char const*,char*) ;
 scalar_t__ wf_register_control (TYPE_1__*) ;

__attribute__((used)) static struct smu_fan_control *smu_fan_create(struct device_node *node,
           int pwm_fan)
{
 struct smu_fan_control *fct;
 const s32 *v;
 const u32 *reg;
 const char *l;

 fct = kmalloc(sizeof(struct smu_fan_control), GFP_KERNEL);
 if (fct == ((void*)0))
  return ((void*)0);
 fct->ctrl.ops = &smu_fan_ops;
 l = of_get_property(node, "location", ((void*)0));
 if (l == ((void*)0))
  goto fail;

 fct->fan_type = pwm_fan;
 fct->ctrl.type = pwm_fan ? WF_CONTROL_PWM_FAN : WF_CONTROL_RPM_FAN;
 fct->ctrl.name = ((void*)0);


 if (!strcmp(l, "Rear Fan 0") || !strcmp(l, "Rear Fan") ||
     !strcmp(l, "Rear fan 0") || !strcmp(l, "Rear fan") ||
     !strcmp(l, "CPU A EXHAUST"))
  fct->ctrl.name = "cpu-rear-fan-0";
 else if (!strcmp(l, "Rear Fan 1") || !strcmp(l, "Rear fan 1") ||
   !strcmp(l, "CPU B EXHAUST"))
  fct->ctrl.name = "cpu-rear-fan-1";
 else if (!strcmp(l, "Front Fan 0") || !strcmp(l, "Front Fan") ||
   !strcmp(l, "Front fan 0") || !strcmp(l, "Front fan") ||
   !strcmp(l, "CPU A INTAKE"))
  fct->ctrl.name = "cpu-front-fan-0";
 else if (!strcmp(l, "Front Fan 1") || !strcmp(l, "Front fan 1") ||
   !strcmp(l, "CPU B INTAKE"))
  fct->ctrl.name = "cpu-front-fan-1";
 else if (!strcmp(l, "CPU A PUMP"))
  fct->ctrl.name = "cpu-pump-0";
 else if (!strcmp(l, "CPU B PUMP"))
  fct->ctrl.name = "cpu-pump-1";
 else if (!strcmp(l, "Slots Fan") || !strcmp(l, "Slots fan") ||
   !strcmp(l, "EXPANSION SLOTS INTAKE"))
  fct->ctrl.name = "slots-fan";
 else if (!strcmp(l, "Drive Bay") || !strcmp(l, "Drive bay") ||
   !strcmp(l, "DRIVE BAY A INTAKE"))
  fct->ctrl.name = "drive-bay-fan";
 else if (!strcmp(l, "BACKSIDE"))
  fct->ctrl.name = "backside-fan";


 if (!strcmp(l, "System Fan") || !strcmp(l, "System fan"))
  fct->ctrl.name = "system-fan";
 else if (!strcmp(l, "CPU Fan") || !strcmp(l, "CPU fan"))
  fct->ctrl.name = "cpu-fan";
 else if (!strcmp(l, "Hard Drive") || !strcmp(l, "Hard drive"))
  fct->ctrl.name = "drive-bay-fan";
 else if (!strcmp(l, "HDD Fan"))
  fct->ctrl.name = "hard-drive-fan";
 else if (!strcmp(l, "ODD Fan"))
  fct->ctrl.name = "optical-drive-fan";


 if (fct->ctrl.name == ((void*)0))
  goto fail;


 v = of_get_property(node, "min-value", ((void*)0));
 if (v == ((void*)0))
  goto fail;
 fct->min = *v;
 v = of_get_property(node, "max-value", ((void*)0));
 if (v == ((void*)0))
  goto fail;
 fct->max = *v;


 reg = of_get_property(node, "reg", ((void*)0));
 if (reg == ((void*)0))
  goto fail;
 fct->reg = *reg;

 if (wf_register_control(&fct->ctrl))
  goto fail;

 return fct;
 fail:
 kfree(fct);
 return ((void*)0);
}
