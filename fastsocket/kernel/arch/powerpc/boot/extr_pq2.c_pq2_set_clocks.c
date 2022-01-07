
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int dt_fixup_cpu_clocks (int ,int ,int ) ;
 void* finddevice (char*) ;
 int setprop (void*,char*,int *,int) ;

void pq2_set_clocks(u32 sysfreq, u32 corefreq, u32 timebase, u32 brgfreq)
{
 void *node;

 dt_fixup_cpu_clocks(corefreq, timebase, sysfreq);

 node = finddevice("/soc/cpm");
 if (node)
  setprop(node, "clock-frequency", &sysfreq, 4);

 node = finddevice("/soc/cpm/brg");
 if (node)
  setprop(node, "clock-frequency", &brgfreq, 4);
}
