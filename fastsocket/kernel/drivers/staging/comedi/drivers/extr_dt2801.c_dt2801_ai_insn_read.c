
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;


 int CR_CHAN (int ) ;
 int CR_RANGE (int ) ;
 int DT_C_READ_ADIM ;
 int dt2801_error (struct comedi_device*,int) ;
 int dt2801_readdata2 (struct comedi_device*,int*) ;
 int dt2801_writecmd (struct comedi_device*,int ) ;
 int dt2801_writedata (struct comedi_device*,int ) ;

__attribute__((used)) static int dt2801_ai_insn_read(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn, unsigned int *data)
{
 int d;
 int stat;
 int i;

 for (i = 0; i < insn->n; i++) {
  stat = dt2801_writecmd(dev, DT_C_READ_ADIM);
  dt2801_writedata(dev, CR_RANGE(insn->chanspec));
  dt2801_writedata(dev, CR_CHAN(insn->chanspec));
  stat = dt2801_readdata2(dev, &d);

  if (stat != 0)
   return dt2801_error(dev, stat);

  data[i] = d;
 }

 return i;
}
