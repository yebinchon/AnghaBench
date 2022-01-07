
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct {int counter_index; } ;


 unsigned int COMEDI_COUNTER_ARMED ;
 unsigned int COMEDI_COUNTER_COUNTING ;
 unsigned int const Gi_Armed_Bit (int ) ;
 unsigned int const Gi_Counting_Bit (int ) ;
 int NITIO_Gxx_Status_Reg (int ) ;
 unsigned int read_register (struct ni_gpct*,int ) ;

__attribute__((used)) static unsigned int ni_tio_counter_status(struct ni_gpct *counter)
{
 unsigned int status = 0;
 const unsigned bits = read_register(counter,
         NITIO_Gxx_Status_Reg(counter->
         counter_index));
 if (bits & Gi_Armed_Bit(counter->counter_index)) {
  status |= COMEDI_COUNTER_ARMED;
  if (bits & Gi_Counting_Bit(counter->counter_index))
   status |= COMEDI_COUNTER_COUNTING;
 }
 return status;
}
