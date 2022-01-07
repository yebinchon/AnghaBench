
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ dw_AiBase; } ;


 TYPE_1__* devpriv ;
 int readl (void*) ;

int i_APCI3XXX_TestConversionStarted(struct comedi_device *dev)
{
 if ((readl((void *)(devpriv->dw_AiBase + 8)) & 0x80000UL) == 0x80000UL)
  return 1;
 else
  return 0;

}
