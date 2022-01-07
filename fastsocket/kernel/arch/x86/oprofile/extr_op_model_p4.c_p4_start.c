
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct op_msrs {int dummy; } ;
struct TYPE_2__ {int cccr_address; } ;


 int CCCR_SET_ENABLE (unsigned int) ;
 size_t VIRT_CTR (unsigned int,int) ;
 unsigned int get_stagger () ;
 int num_counters ;
 TYPE_1__* p4_counters ;
 int rdmsr (int ,unsigned int,unsigned int) ;
 int * reset_value ;
 int wrmsr (int ,unsigned int,unsigned int) ;

__attribute__((used)) static void p4_start(struct op_msrs const * const msrs)
{
 unsigned int low, high, stag;
 int i;

 stag = get_stagger();

 for (i = 0; i < num_counters; ++i) {
  if (!reset_value[i])
   continue;
  rdmsr(p4_counters[VIRT_CTR(stag, i)].cccr_address, low, high);
  CCCR_SET_ENABLE(low);
  wrmsr(p4_counters[VIRT_CTR(stag, i)].cccr_address, low, high);
 }
}
