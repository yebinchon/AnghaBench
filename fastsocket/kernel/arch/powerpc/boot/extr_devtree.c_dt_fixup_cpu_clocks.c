
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MHZ (int) ;
 void* find_node_by_devtype (void*,char*) ;
 int printf (char*,int,int) ;
 int setprop_val (void*,char*,int) ;
 int timebase_period_ns ;

void dt_fixup_cpu_clocks(u32 cpu, u32 tb, u32 bus)
{
 void *devp = ((void*)0);

 printf("CPU clock-frequency <- 0x%x (%dMHz)\n\r", cpu, MHZ(cpu));
 printf("CPU timebase-frequency <- 0x%x (%dMHz)\n\r", tb, MHZ(tb));
 if (bus > 0)
  printf("CPU bus-frequency <- 0x%x (%dMHz)\n\r", bus, MHZ(bus));

 while ((devp = find_node_by_devtype(devp, "cpu"))) {
  setprop_val(devp, "clock-frequency", cpu);
  setprop_val(devp, "timebase-frequency", tb);
  if (bus > 0)
   setprop_val(devp, "bus-frequency", bus);
 }

 timebase_period_ns = 1000000000 / tb;
}
