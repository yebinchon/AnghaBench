
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct_device {int* regs; } ;
struct ni_gpct {int counter_index; struct ni_gpct_device* counter_dev; } ;


 int Gi_Synchronize_Gate_Bit ;
 size_t NITIO_Gi_Autoincrement_Reg (int ) ;
 int NITIO_Gi_Command_Reg (int ) ;
 int NITIO_Gi_Counting_Mode_Reg (int ) ;
 int NITIO_Gi_DMA_Config_Reg (int ) ;
 int NITIO_Gi_Input_Select_Reg (int ) ;
 int NITIO_Gi_Interrupt_Enable_Reg (int ) ;
 size_t NITIO_Gi_LoadA_Reg (int ) ;
 size_t NITIO_Gi_LoadB_Reg (int ) ;
 int NITIO_Gi_Mode_Reg (int ) ;
 size_t NITIO_Gi_Second_Gate_Reg (int ) ;
 scalar_t__ ni_tio_counting_mode_registers_present (struct ni_gpct_device*) ;
 int ni_tio_reset_count_and_disarm (struct ni_gpct*) ;
 scalar_t__ ni_tio_second_gate_registers_present (struct ni_gpct_device*) ;
 int ni_tio_set_bits (struct ni_gpct*,int ,int ,int) ;
 int write_register (struct ni_gpct*,int,size_t) ;

void ni_tio_init_counter(struct ni_gpct *counter)
{
 struct ni_gpct_device *counter_dev = counter->counter_dev;

 ni_tio_reset_count_and_disarm(counter);

 counter_dev->regs[NITIO_Gi_Autoincrement_Reg(counter->counter_index)] =
     0x0;
 write_register(counter,
         counter_dev->
         regs[NITIO_Gi_Autoincrement_Reg(counter->counter_index)],
         NITIO_Gi_Autoincrement_Reg(counter->counter_index));
 ni_tio_set_bits(counter, NITIO_Gi_Command_Reg(counter->counter_index),
   ~0, Gi_Synchronize_Gate_Bit);
 ni_tio_set_bits(counter, NITIO_Gi_Mode_Reg(counter->counter_index), ~0,
   0);
 counter_dev->regs[NITIO_Gi_LoadA_Reg(counter->counter_index)] = 0x0;
 write_register(counter,
         counter_dev->
         regs[NITIO_Gi_LoadA_Reg(counter->counter_index)],
         NITIO_Gi_LoadA_Reg(counter->counter_index));
 counter_dev->regs[NITIO_Gi_LoadB_Reg(counter->counter_index)] = 0x0;
 write_register(counter,
         counter_dev->
         regs[NITIO_Gi_LoadB_Reg(counter->counter_index)],
         NITIO_Gi_LoadB_Reg(counter->counter_index));
 ni_tio_set_bits(counter,
   NITIO_Gi_Input_Select_Reg(counter->counter_index), ~0,
   0);
 if (ni_tio_counting_mode_registers_present(counter_dev)) {
  ni_tio_set_bits(counter,
    NITIO_Gi_Counting_Mode_Reg(counter->
          counter_index), ~0,
    0);
 }
 if (ni_tio_second_gate_registers_present(counter_dev)) {
  counter_dev->
      regs[NITIO_Gi_Second_Gate_Reg(counter->counter_index)] =
      0x0;
  write_register(counter,
          counter_dev->
          regs[NITIO_Gi_Second_Gate_Reg
        (counter->counter_index)],
          NITIO_Gi_Second_Gate_Reg(counter->
       counter_index));
 }
 ni_tio_set_bits(counter,
   NITIO_Gi_DMA_Config_Reg(counter->counter_index), ~0,
   0x0);
 ni_tio_set_bits(counter,
   NITIO_Gi_Interrupt_Enable_Reg(counter->counter_index),
   ~0, 0x0);
}
