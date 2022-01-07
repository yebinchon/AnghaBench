
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_4__ {int i_IobaseAmcc; } ;
struct TYPE_3__ {int pc_EepromChip; } ;


 unsigned short CR_CHAN (int ) ;
 TYPE_2__* devpriv ;
 TYPE_1__* this_board ;
 unsigned short w_EepromReadWord (int ,int ,int) ;

__attribute__((used)) static int i_ADDIDATA_InsnReadEeprom(struct comedi_device *dev, struct comedi_subdevice *s,
 struct comedi_insn *insn, unsigned int *data)
{
 unsigned short w_Data;
 unsigned short w_Address;
 w_Address = CR_CHAN(insn->chanspec);

 w_Data = w_EepromReadWord(devpriv->i_IobaseAmcc,
  this_board->pc_EepromChip, 0x100 + (2 * w_Address));
 data[0] = w_Data;

 return insn->n;

}
