
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bi_busfreq; int bi_brgfreq; int bi_intfreq; int bi_enet2addr; int bi_enet1addr; int bi_enetaddr; int bi_memsize; int bi_memstart; } ;


 TYPE_1__ bd ;
 int dt_fixup_cpu_clocks (int ,int,int) ;
 int dt_fixup_mac_address_by_alias (char*,int ) ;
 int dt_fixup_memory (int ,int ) ;
 void* find_node_by_compatible (int *,char*) ;
 void* find_node_by_devtype (void*,char*) ;
 void* get_parent (void*) ;
 int setprop (void*,char*,int*,int) ;

__attribute__((used)) static void platform_fixups(void)
{
 void *devp;

 dt_fixup_memory(bd.bi_memstart, bd.bi_memsize);
 dt_fixup_mac_address_by_alias("ethernet0", bd.bi_enetaddr);
 dt_fixup_mac_address_by_alias("ethernet1", bd.bi_enet1addr);
 dt_fixup_mac_address_by_alias("ethernet2", bd.bi_enet2addr);
 dt_fixup_cpu_clocks(bd.bi_intfreq, bd.bi_busfreq / 8, bd.bi_busfreq);





 devp = find_node_by_devtype(((void*)0), "soc");
 if (devp) {
  void *serial = ((void*)0);

  setprop(devp, "bus-frequency", &bd.bi_busfreq,
          sizeof(bd.bi_busfreq));

  while ((serial = find_node_by_devtype(serial, "serial"))) {
   if (get_parent(serial) != devp)
    continue;

   setprop(serial, "clock-frequency", &bd.bi_busfreq,
           sizeof(bd.bi_busfreq));
  }
 }

 devp = find_node_by_compatible(((void*)0), "fsl,cpm2-brg");
 if (devp)
  setprop(devp, "clock-frequency", &bd.bi_brgfreq,
          sizeof(bd.bi_brgfreq));
}
