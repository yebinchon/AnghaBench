
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int (* stc_writew ) (struct comedi_device*,int,int) ;} ;


 TYPE_1__* devpriv ;
 int stub1 (struct comedi_device*,int,int) ;
 int stub2 (struct comedi_device*,int,int) ;

__attribute__((used)) static void win_out2(struct comedi_device *dev, uint32_t data, int reg)
{
 devpriv->stc_writew(dev, data >> 16, reg);
 devpriv->stc_writew(dev, data & 0xffff, reg + 1);
}
