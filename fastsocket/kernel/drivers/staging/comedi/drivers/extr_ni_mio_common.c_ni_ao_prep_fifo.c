
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {int async; } ;
struct comedi_device {int dummy; } ;
struct TYPE_4__ {int reg_type; int ao_fifo_depth; } ;
struct TYPE_3__ {int (* stc_writew ) (struct comedi_device*,int,int ) ;} ;


 int AO_FIFO_Offset_Load_611x ;
 int DAC_FIFO_Clear ;
 TYPE_2__ boardtype ;
 int comedi_buf_read_n_available (int ) ;
 TYPE_1__* devpriv ;
 int ni_ao_fifo_load (struct comedi_device*,struct comedi_subdevice*,int) ;
 int ni_ao_win_outl (struct comedi_device*,int,int ) ;
 int ni_reg_6xxx_mask ;
 int stub1 (struct comedi_device*,int,int ) ;

__attribute__((used)) static int ni_ao_prep_fifo(struct comedi_device *dev,
      struct comedi_subdevice *s)
{
 int n;


 devpriv->stc_writew(dev, 1, DAC_FIFO_Clear);
 if (boardtype.reg_type & ni_reg_6xxx_mask)
  ni_ao_win_outl(dev, 0x6, AO_FIFO_Offset_Load_611x);


 n = comedi_buf_read_n_available(s->async);
 if (n == 0)
  return 0;

 n /= sizeof(short);
 if (n > boardtype.ao_fifo_depth)
  n = boardtype.ao_fifo_depth;

 ni_ao_fifo_load(dev, s, n);

 return n;
}
