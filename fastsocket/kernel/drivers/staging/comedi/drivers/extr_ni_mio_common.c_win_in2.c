
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int (* stc_readw ) (struct comedi_device*,int) ;} ;


 TYPE_1__* devpriv ;
 int stub1 (struct comedi_device*,int) ;
 int stub2 (struct comedi_device*,int) ;

__attribute__((used)) static uint32_t win_in2(struct comedi_device *dev, int reg)
{
 uint32_t bits;
 bits = devpriv->stc_readw(dev, reg) << 16;
 bits |= devpriv->stc_readw(dev, reg + 1);
 return bits;
}
