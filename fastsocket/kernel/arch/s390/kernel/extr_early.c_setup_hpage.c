
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int machine_flags; } ;


 int MACHINE_FLAG_HPAGE ;
 TYPE_1__ S390_lowcore ;
 int __ctl_set_bit (int ,int) ;
 unsigned int stfl () ;

void setup_hpage(void)
{

 unsigned int facilities;

 facilities = stfl();
 if (!(facilities & (1UL << 23)) || !(facilities & (1UL << 29)))
  return;
 S390_lowcore.machine_flags |= MACHINE_FLAG_HPAGE;
 __ctl_set_bit(0, 23);

}
