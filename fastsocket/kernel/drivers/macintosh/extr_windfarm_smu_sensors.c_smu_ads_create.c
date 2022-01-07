
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {char* name; int * ops; } ;
struct smu_ad_sensor {TYPE_1__ sens; int reg; } ;
struct device_node {int dummy; } ;


 int DBG (char*,int ) ;
 int GFP_KERNEL ;
 int SMU_SDB_CPUDIODE_ID ;
 int SMU_SDB_CPUVCP_ID ;
 int SMU_SDB_SLOTSPOW_ID ;
 int * cpudiode ;
 int * cpuvcp ;
 int kfree (struct smu_ad_sensor*) ;
 struct smu_ad_sensor* kmalloc (int,int ) ;
 void* of_get_property (struct device_node*,char*,int *) ;
 int * slotspow ;
 int smu_cpuamp_ops ;
 int smu_cputemp_ops ;
 int smu_cpuvolt_ops ;
 int smu_slotspow_ops ;
 int strcmp (char const*,char*) ;
 scalar_t__ wf_register_sensor (TYPE_1__*) ;

__attribute__((used)) static struct smu_ad_sensor *smu_ads_create(struct device_node *node)
{
 struct smu_ad_sensor *ads;
 const char *c, *l;
 const u32 *v;

 ads = kmalloc(sizeof(struct smu_ad_sensor), GFP_KERNEL);
 if (ads == ((void*)0))
  return ((void*)0);
 c = of_get_property(node, "device_type", ((void*)0));
 l = of_get_property(node, "location", ((void*)0));
 if (c == ((void*)0) || l == ((void*)0))
  goto fail;
 if (!strcmp(c, "temp-sensor") &&
     !strcmp(l, "CPU T-Diode")) {
  ads->sens.ops = &smu_cputemp_ops;
  ads->sens.name = "cpu-temp";
  if (cpudiode == ((void*)0)) {
   DBG("wf: cpudiode partition (%02x) not found\n",
       SMU_SDB_CPUDIODE_ID);
   goto fail;
  }
 } else if (!strcmp(c, "current-sensor") &&
     !strcmp(l, "CPU Current")) {
  ads->sens.ops = &smu_cpuamp_ops;
  ads->sens.name = "cpu-current";
  if (cpuvcp == ((void*)0)) {
   DBG("wf: cpuvcp partition (%02x) not found\n",
       SMU_SDB_CPUVCP_ID);
   goto fail;
  }
 } else if (!strcmp(c, "voltage-sensor") &&
     !strcmp(l, "CPU Voltage")) {
  ads->sens.ops = &smu_cpuvolt_ops;
  ads->sens.name = "cpu-voltage";
  if (cpuvcp == ((void*)0)) {
   DBG("wf: cpuvcp partition (%02x) not found\n",
       SMU_SDB_CPUVCP_ID);
   goto fail;
  }
 } else if (!strcmp(c, "power-sensor") &&
     !strcmp(l, "Slots Power")) {
  ads->sens.ops = &smu_slotspow_ops;
  ads->sens.name = "slots-power";
  if (slotspow == ((void*)0)) {
   DBG("wf: slotspow partition (%02x) not found\n",
       SMU_SDB_SLOTSPOW_ID);
   goto fail;
  }
 } else
  goto fail;

 v = of_get_property(node, "reg", ((void*)0));
 if (v == ((void*)0))
  goto fail;
 ads->reg = *v;

 if (wf_register_sensor(&ads->sens))
  goto fail;
 return ads;
 fail:
 kfree(ads);
 return ((void*)0);
}
