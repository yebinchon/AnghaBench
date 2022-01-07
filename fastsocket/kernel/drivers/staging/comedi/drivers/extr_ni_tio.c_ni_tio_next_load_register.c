
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct {int counter_index; } ;


 unsigned int const Gi_Next_Load_Source_Bit (int ) ;
 int NITIO_Gi_LoadA_Reg (int ) ;
 int NITIO_Gi_LoadB_Reg (int ) ;
 int NITIO_Gxx_Status_Reg (int ) ;
 unsigned int read_register (struct ni_gpct*,int ) ;

__attribute__((used)) static unsigned ni_tio_next_load_register(struct ni_gpct *counter)
{
 const unsigned bits = read_register(counter,
         NITIO_Gxx_Status_Reg(counter->
         counter_index));

 if (bits & Gi_Next_Load_Source_Bit(counter->counter_index)) {
  return NITIO_Gi_LoadB_Reg(counter->counter_index);
 } else {
  return NITIO_Gi_LoadA_Reg(counter->counter_index);
 }
}
