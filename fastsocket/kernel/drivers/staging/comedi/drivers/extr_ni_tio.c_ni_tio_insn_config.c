
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct {int dummy; } ;
struct comedi_insn {int dummy; } ;


 int EINVAL ;
 unsigned int counter_status_mask ;
 int ni_tio_arm (struct ni_gpct*,int,unsigned int) ;
 unsigned int ni_tio_counter_status (struct ni_gpct*) ;
 int ni_tio_get_clock_src (struct ni_gpct*,unsigned int*,unsigned int*) ;
 int ni_tio_get_gate_src (struct ni_gpct*,unsigned int,unsigned int*) ;
 int ni_tio_reset_count_and_disarm (struct ni_gpct*) ;
 int ni_tio_set_clock_src (struct ni_gpct*,unsigned int,unsigned int) ;
 int ni_tio_set_counter_mode (struct ni_gpct*,unsigned int) ;
 int ni_tio_set_gate_src (struct ni_gpct*,unsigned int,unsigned int) ;
 int ni_tio_set_other_src (struct ni_gpct*,unsigned int,unsigned int) ;

int ni_tio_insn_config(struct ni_gpct *counter,
         struct comedi_insn *insn, unsigned int *data)
{
 switch (data[0]) {
 case 130:
  return ni_tio_set_counter_mode(counter, data[1]);
  break;
 case 137:
  return ni_tio_arm(counter, 1, data[1]);
  break;
 case 136:
  ni_tio_arm(counter, 0, 0);
  return 0;
  break;
 case 134:
  data[1] = ni_tio_counter_status(counter);
  data[2] = counter_status_mask;
  return 0;
  break;
 case 131:
  return ni_tio_set_clock_src(counter, data[1], data[2]);
  break;
 case 135:
  ni_tio_get_clock_src(counter, &data[1], &data[2]);
  return 0;
  break;
 case 129:
  return ni_tio_set_gate_src(counter, data[1], data[2]);
  break;
 case 133:
  return ni_tio_get_gate_src(counter, data[1], &data[2]);
  break;
 case 128:
  return ni_tio_set_other_src(counter, data[1], data[2]);
  break;
 case 132:
  ni_tio_reset_count_and_disarm(counter);
  return 0;
  break;
 default:
  break;
 }
 return -EINVAL;
}
