
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct op_counter_config {scalar_t__ count; int event; scalar_t__ enabled; } ;
struct TYPE_2__ {unsigned int control; scalar_t__ reset_counter2; scalar_t__ reset_counter1; } ;


 unsigned int RM9K_COUNTER1_ENABLE ;
 unsigned int RM9K_COUNTER1_EVENT (int ) ;
 unsigned int RM9K_COUNTER1_KERNEL ;
 unsigned int RM9K_COUNTER1_USER ;
 unsigned int RM9K_COUNTER2_ENABLE ;
 unsigned int RM9K_COUNTER2_EVENT (int ) ;
 unsigned int RM9K_COUNTER2_KERNEL ;
 unsigned int RM9K_COUNTER2_USER ;
 TYPE_1__ reg ;

__attribute__((used)) static void rm9000_reg_setup(struct op_counter_config *ctr)
{
 unsigned int control = 0;



 if (ctr[0].enabled)
  control |= RM9K_COUNTER1_EVENT(ctr[0].event) |
             RM9K_COUNTER1_KERNEL |
             RM9K_COUNTER1_USER |
             RM9K_COUNTER1_ENABLE;
 if (ctr[1].enabled)
  control |= RM9K_COUNTER2_EVENT(ctr[1].event) |
             RM9K_COUNTER2_KERNEL |
             RM9K_COUNTER2_USER |
             RM9K_COUNTER2_ENABLE;
 reg.control = control;

 reg.reset_counter1 = 0x80000000 - ctr[0].count;
 reg.reset_counter2 = 0x80000000 - ctr[1].count;
}
