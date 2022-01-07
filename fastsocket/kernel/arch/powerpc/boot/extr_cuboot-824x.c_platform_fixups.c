
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bi_busfreq; int bi_intfreq; int bi_enetaddr; int bi_memsize; int bi_memstart; } ;


 TYPE_1__ bd ;
 int dt_fixup_cpu_clocks (int ,int,int) ;
 int dt_fixup_mac_addresses (int ) ;
 int dt_fixup_memory (int ,int ) ;
 void* find_node_by_devtype (void*,char*) ;
 void* get_parent (void*) ;
 int setprop (void*,char*,int*,int) ;

__attribute__((used)) static void platform_fixups(void)
{
 void *soc;

 dt_fixup_memory(bd.bi_memstart, bd.bi_memsize);
 dt_fixup_mac_addresses(bd.bi_enetaddr);
 dt_fixup_cpu_clocks(bd.bi_intfreq, bd.bi_busfreq / 4, bd.bi_busfreq);

 soc = find_node_by_devtype(((void*)0), "soc");
 if (soc) {
  void *serial = ((void*)0);

  setprop(soc, "bus-frequency", &bd.bi_busfreq,
          sizeof(bd.bi_busfreq));

  while ((serial = find_node_by_devtype(serial, "serial"))) {
   if (get_parent(serial) != soc)
    continue;

   setprop(serial, "clock-frequency", &bd.bi_busfreq,
           sizeof(bd.bi_busfreq));
  }
 }
}
