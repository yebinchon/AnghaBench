
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pcf50633 {int dev; } ;
struct TYPE_5__ {int parent; } ;
struct TYPE_6__ {TYPE_1__ dev; } ;


 int ARRAY_SIZE (TYPE_2__**) ;
 TYPE_2__** gta02_devices_pmu_children ;
 struct pcf50633* gta02_pcf ;
 int platform_add_devices (TYPE_2__**,int) ;

__attribute__((used)) static void gta02_pmu_attach_child_devices(struct pcf50633 *pcf)
{
 int n;


 gta02_pcf = pcf;

 for (n = 0; n < ARRAY_SIZE(gta02_devices_pmu_children); n++)
  gta02_devices_pmu_children[n]->dev.parent = pcf->dev;

 platform_add_devices(gta02_devices_pmu_children,
        ARRAY_SIZE(gta02_devices_pmu_children));
}
