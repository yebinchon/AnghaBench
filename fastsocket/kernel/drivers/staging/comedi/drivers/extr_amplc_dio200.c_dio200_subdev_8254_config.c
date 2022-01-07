
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dio200_subdev_8254 {int iobase; } ;
struct comedi_subdevice {struct dio200_subdev_8254* private; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;


 int CR_CHAN (int ) ;
 int EINVAL ;






 int dio200_get_clock_src (struct dio200_subdev_8254*,int,unsigned int*) ;
 int dio200_get_gate_src (struct dio200_subdev_8254*,int) ;
 int dio200_set_clock_src (struct dio200_subdev_8254*,int,unsigned int) ;
 int dio200_set_gate_src (struct dio200_subdev_8254*,int,unsigned int) ;
 int i8254_set_mode (int ,int ,int,unsigned int) ;
 unsigned int i8254_status (int ,int ,int) ;

__attribute__((used)) static int
dio200_subdev_8254_config(struct comedi_device *dev, struct comedi_subdevice *s,
     struct comedi_insn *insn, unsigned int *data)
{
 struct dio200_subdev_8254 *subpriv = s->private;
 int ret;
 int chan = CR_CHAN(insn->chanspec);

 switch (data[0]) {
 case 129:
  ret = i8254_set_mode(subpriv->iobase, 0, chan, data[1]);
  if (ret < 0)
   return -EINVAL;
  break;
 case 133:
  data[1] = i8254_status(subpriv->iobase, 0, chan);
  break;
 case 128:
  ret = dio200_set_gate_src(subpriv, chan, data[2]);
  if (ret < 0)
   return -EINVAL;
  break;
 case 131:
  ret = dio200_get_gate_src(subpriv, chan);
  if (ret < 0)
   return -EINVAL;
  data[2] = ret;
  break;
 case 130:
  ret = dio200_set_clock_src(subpriv, chan, data[1]);
  if (ret < 0)
   return -EINVAL;
  break;
 case 132:
  ret = dio200_get_clock_src(subpriv, chan, &data[2]);
  if (ret < 0)
   return -EINVAL;
  data[1] = ret;
  break;
 default:
  return -EINVAL;
  break;
 }
 return insn->n;
}
