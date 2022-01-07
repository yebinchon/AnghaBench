
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct {int counter_index; } ;
struct comedi_cmd {scalar_t__ scan_begin_src; unsigned int scan_begin_arg; scalar_t__ convert_src; unsigned int convert_arg; int flags; } ;
struct comedi_async {struct comedi_cmd cmd; } ;


 int Gi_Gate_Interrupt_Enable_Bit (int ) ;
 int NITIO_Gi_Interrupt_Enable_Reg (int ) ;
 scalar_t__ TRIG_EXT ;
 int TRIG_WAKE_EOS ;
 int ni_tio_set_bits (struct ni_gpct*,int ,int ,int ) ;
 int ni_tio_set_gate_src (struct ni_gpct*,int ,unsigned int) ;

__attribute__((used)) static int ni_tio_cmd_setup(struct ni_gpct *counter, struct comedi_async *async)
{
 struct comedi_cmd *cmd = &async->cmd;
 int set_gate_source = 0;
 unsigned gate_source;
 int retval = 0;

 if (cmd->scan_begin_src == TRIG_EXT) {
  set_gate_source = 1;
  gate_source = cmd->scan_begin_arg;
 } else if (cmd->convert_src == TRIG_EXT) {
  set_gate_source = 1;
  gate_source = cmd->convert_arg;
 }
 if (set_gate_source) {
  retval = ni_tio_set_gate_src(counter, 0, gate_source);
 }
 if (cmd->flags & TRIG_WAKE_EOS) {
  ni_tio_set_bits(counter,
    NITIO_Gi_Interrupt_Enable_Reg(counter->
             counter_index),
    Gi_Gate_Interrupt_Enable_Bit(counter->
            counter_index),
    Gi_Gate_Interrupt_Enable_Bit(counter->
            counter_index));
 }
 return retval;
}
