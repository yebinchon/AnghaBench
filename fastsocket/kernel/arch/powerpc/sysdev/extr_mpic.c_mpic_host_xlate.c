
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct irq_host {int dummy; } ;
struct device_node {int dummy; } ;
typedef size_t irq_hw_number_t ;


 int DBG (char*,unsigned int,size_t,size_t,size_t,unsigned int) ;




 unsigned int IRQ_TYPE_NONE ;
 scalar_t__ machine_is (int ) ;
 int powermac ;

__attribute__((used)) static int mpic_host_xlate(struct irq_host *h, struct device_node *ct,
      u32 *intspec, unsigned int intsize,
      irq_hw_number_t *out_hwirq, unsigned int *out_flags)

{
 static unsigned char map_mpic_senses[4] = {
  130,
  128,
  129,
  131,
 };

 *out_hwirq = intspec[0];
 if (intsize > 1) {
  u32 mask = 0x3;
  if (machine_is(powermac))
   mask = 0x1;
  *out_flags = map_mpic_senses[intspec[1] & mask];
 } else
  *out_flags = IRQ_TYPE_NONE;

 DBG("mpic: xlate (%d cells: 0x%08x 0x%08x) to line 0x%lx sense 0x%x\n",
     intsize, intspec[0], intspec[1], *out_hwirq, *out_flags);

 return 0;
}
