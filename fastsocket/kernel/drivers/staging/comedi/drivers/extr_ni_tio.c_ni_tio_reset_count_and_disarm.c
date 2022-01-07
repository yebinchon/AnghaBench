
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct {int counter_index; } ;


 int Gi_Reset_Bit (int ) ;
 int NITIO_Gxx_Joint_Reset_Reg (int ) ;
 int write_register (struct ni_gpct*,int ,int ) ;

__attribute__((used)) static void ni_tio_reset_count_and_disarm(struct ni_gpct *counter)
{
 write_register(counter, Gi_Reset_Bit(counter->counter_index),
         NITIO_Gxx_Joint_Reset_Reg(counter->counter_index));
}
