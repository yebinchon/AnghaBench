
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bi_busfreq; int bi_intfreq; int bi_enetaddr; int bi_memsize; int bi_memstart; } ;


 int MHZ (int) ;
 TYPE_1__ bd ;
 int dt_fixup_cpu_clocks (int ,int,int) ;
 int dt_fixup_mac_addresses (int ) ;
 int dt_fixup_memory (int ,int ) ;
 void* finddevice (char*) ;
 int printf (char*,int,int) ;
 int setprop (void*,char*,int*,int) ;

__attribute__((used)) static void platform_fixups(void)
{
 void *node;

 dt_fixup_memory(bd.bi_memstart, bd.bi_memsize);
 dt_fixup_mac_addresses(bd.bi_enetaddr);
 dt_fixup_cpu_clocks(bd.bi_intfreq, bd.bi_busfreq / 16, bd.bi_busfreq);

 node = finddevice("/soc/cpm/brg");
 if (node) {
  printf("BRG clock-frequency <- 0x%x (%dMHz)\r\n",
         bd.bi_busfreq, MHZ(bd.bi_busfreq));
  setprop(node, "clock-frequency", &bd.bi_busfreq, 4);
 }

}
