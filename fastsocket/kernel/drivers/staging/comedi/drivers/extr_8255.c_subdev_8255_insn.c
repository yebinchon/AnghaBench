
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int state; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {int dummy; } ;


 int CALLBACK_ARG ;
 int CALLBACK_FUNC (int,scalar_t__,int,int ) ;
 scalar_t__ _8255_DATA ;

__attribute__((used)) static int subdev_8255_insn(struct comedi_device *dev,
       struct comedi_subdevice *s,
       struct comedi_insn *insn, unsigned int *data)
{
 if (data[0]) {
  s->state &= ~data[0];
  s->state |= (data[0] & data[1]);

  if (data[0] & 0xff)
   CALLBACK_FUNC(1, _8255_DATA, s->state & 0xff,
          CALLBACK_ARG);
  if (data[0] & 0xff00)
   CALLBACK_FUNC(1, _8255_DATA + 1, (s->state >> 8) & 0xff,
          CALLBACK_ARG);
  if (data[0] & 0xff0000)
   CALLBACK_FUNC(1, _8255_DATA + 2,
          (s->state >> 16) & 0xff, CALLBACK_ARG);
 }

 data[1] = CALLBACK_FUNC(0, _8255_DATA, 0, CALLBACK_ARG);
 data[1] |= (CALLBACK_FUNC(0, _8255_DATA + 1, 0, CALLBACK_ARG) << 8);
 data[1] |= (CALLBACK_FUNC(0, _8255_DATA + 2, 0, CALLBACK_ARG) << 16);

 return 2;
}
