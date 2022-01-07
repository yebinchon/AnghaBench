
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct_device {unsigned int* regs; } ;
struct ni_gpct {int counter_index; struct ni_gpct_device* counter_dev; } ;
struct comedi_insn {int n; int chanspec; } ;


 unsigned int CR_CHAN (int ) ;
 int Gi_Save_Trace_Bit ;
 int NITIO_Gi_Command_Reg (int ) ;
 size_t NITIO_Gi_LoadA_Reg (int ) ;
 size_t NITIO_Gi_LoadB_Reg (int ) ;
 int NITIO_Gi_SW_Save_Reg (int ) ;
 int ni_tio_set_bits (struct ni_gpct*,int ,int ,int ) ;
 unsigned int read_register (struct ni_gpct*,int ) ;

int ni_tio_rinsn(struct ni_gpct *counter, struct comedi_insn *insn,
   unsigned int *data)
{
 struct ni_gpct_device *counter_dev = counter->counter_dev;
 const unsigned channel = CR_CHAN(insn->chanspec);
 unsigned first_read;
 unsigned second_read;
 unsigned correct_read;

 if (insn->n < 1)
  return 0;
 switch (channel) {
 case 0:
  ni_tio_set_bits(counter,
    NITIO_Gi_Command_Reg(counter->counter_index),
    Gi_Save_Trace_Bit, 0);
  ni_tio_set_bits(counter,
    NITIO_Gi_Command_Reg(counter->counter_index),
    Gi_Save_Trace_Bit, Gi_Save_Trace_Bit);





  first_read =
      read_register(counter,
      NITIO_Gi_SW_Save_Reg(counter->counter_index));
  second_read =
      read_register(counter,
      NITIO_Gi_SW_Save_Reg(counter->counter_index));
  if (first_read != second_read)
   correct_read =
       read_register(counter,
       NITIO_Gi_SW_Save_Reg(counter->
              counter_index));
  else
   correct_read = first_read;
  data[0] = correct_read;
  return 0;
  break;
 case 1:
  data[0] =
      counter_dev->
      regs[NITIO_Gi_LoadA_Reg(counter->counter_index)];
  break;
 case 2:
  data[0] =
      counter_dev->
      regs[NITIO_Gi_LoadB_Reg(counter->counter_index)];
  break;
 };
 return 0;
}
