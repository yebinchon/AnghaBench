
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct slice_data {int * irq_enable_mask; } ;
typedef int nasid_t ;
struct TYPE_2__ {struct slice_data* data; } ;


 int COMPACT_TO_NASID_NODEID (int ) ;
 int PI_INT_MASK0_A ;
 int PI_INT_MASK0_B ;
 int PI_INT_MASK1_A ;
 int PI_INT_MASK1_B ;
 int REMOTE_HUB_S (int ,int ,int ) ;
 TYPE_1__* cpu_data ;
 int cpu_to_node (int) ;
 int cputoslice (int) ;
 int set_bit (int,int *) ;

__attribute__((used)) static int intr_connect_level(int cpu, int bit)
{
 nasid_t nasid = COMPACT_TO_NASID_NODEID(cpu_to_node(cpu));
 struct slice_data *si = cpu_data[cpu].data;

 set_bit(bit, si->irq_enable_mask);

 if (!cputoslice(cpu)) {
  REMOTE_HUB_S(nasid, PI_INT_MASK0_A, si->irq_enable_mask[0]);
  REMOTE_HUB_S(nasid, PI_INT_MASK1_A, si->irq_enable_mask[1]);
 } else {
  REMOTE_HUB_S(nasid, PI_INT_MASK0_B, si->irq_enable_mask[0]);
  REMOTE_HUB_S(nasid, PI_INT_MASK1_B, si->irq_enable_mask[1]);
 }

 return 0;
}
