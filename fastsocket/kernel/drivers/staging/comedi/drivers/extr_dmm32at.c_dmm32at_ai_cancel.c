
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int ai_scans_left; } ;


 TYPE_1__* devpriv ;

__attribute__((used)) static int dmm32at_ai_cancel(struct comedi_device *dev,
        struct comedi_subdevice *s)
{
 devpriv->ai_scans_left = 1;
 return 0;
}
