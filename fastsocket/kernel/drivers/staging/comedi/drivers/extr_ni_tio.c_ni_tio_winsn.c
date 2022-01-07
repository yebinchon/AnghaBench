
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct_device {unsigned int* regs; } ;
struct ni_gpct {int counter_index; struct ni_gpct_device* counter_dev; } ;
struct comedi_insn {int n; int chanspec; } ;


 unsigned int CR_CHAN (int ) ;
 int EINVAL ;
 int Gi_Load_Bit ;
 int NITIO_Gi_Command_Reg (int ) ;
 size_t NITIO_Gi_LoadA_Reg (int ) ;
 size_t NITIO_Gi_LoadB_Reg (int ) ;
 unsigned int ni_tio_next_load_register (struct ni_gpct*) ;
 int ni_tio_set_bits_transient (struct ni_gpct*,int ,int ,int ,int ) ;
 int write_register (struct ni_gpct*,unsigned int,size_t) ;

int ni_tio_winsn(struct ni_gpct *counter, struct comedi_insn *insn,
   unsigned int *data)
{
 struct ni_gpct_device *counter_dev = counter->counter_dev;
 const unsigned channel = CR_CHAN(insn->chanspec);
 unsigned load_reg;

 if (insn->n < 1)
  return 0;
 switch (channel) {
 case 0:


  load_reg = ni_tio_next_load_register(counter);
  write_register(counter, data[0], load_reg);
  ni_tio_set_bits_transient(counter,
       NITIO_Gi_Command_Reg(counter->
              counter_index),
       0, 0, Gi_Load_Bit);

  write_register(counter, counter_dev->regs[load_reg], load_reg);
  break;
 case 1:
  counter_dev->regs[NITIO_Gi_LoadA_Reg(counter->counter_index)] =
      data[0];
  write_register(counter, data[0],
          NITIO_Gi_LoadA_Reg(counter->counter_index));
  break;
 case 2:
  counter_dev->regs[NITIO_Gi_LoadB_Reg(counter->counter_index)] =
      data[0];
  write_register(counter, data[0],
          NITIO_Gi_LoadB_Reg(counter->counter_index));
  break;
 default:
  return -EINVAL;
  break;
 }
 return 0;
}
