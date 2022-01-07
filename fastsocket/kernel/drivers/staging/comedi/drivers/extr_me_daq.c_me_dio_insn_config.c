
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int io_bits; } ;
struct comedi_insn {int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ me_regbase; int control_2; } ;


 int CR_CHAN (int ) ;
 int ENABLE_PORT_A ;
 int ENABLE_PORT_B ;
 scalar_t__ ME_CONTROL_2 ;
 TYPE_1__* dev_private ;
 int writew (int ,scalar_t__) ;

__attribute__((used)) static int me_dio_insn_config(struct comedi_device *dev,
         struct comedi_subdevice *s,
         struct comedi_insn *insn, unsigned int *data)
{
 int bits;
 int mask = 1 << CR_CHAN(insn->chanspec);


 if (mask & 0x0000ffff) {
  bits = 0x0000ffff;


  dev_private->control_2 |= ENABLE_PORT_A;
  writew(dev_private->control_2,
         dev_private->me_regbase + ME_CONTROL_2);
 } else {

  bits = 0xffff0000;


  dev_private->control_2 |= ENABLE_PORT_B;
  writew(dev_private->control_2,
         dev_private->me_regbase + ME_CONTROL_2);
 }

 if (data[0]) {

  s->io_bits |= bits;
 } else {

  s->io_bits &= ~bits;
 }

 return 1;
}
