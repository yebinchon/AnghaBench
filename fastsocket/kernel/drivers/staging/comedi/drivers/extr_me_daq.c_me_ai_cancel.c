
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int control_1; scalar_t__ me_regbase; } ;


 scalar_t__ ME_CONTROL_1 ;
 TYPE_1__* dev_private ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static int me_ai_cancel(struct comedi_device *dev, struct comedi_subdevice *s)
{



 dev_private->control_1 &= 0xFFFC;
 writew(dev_private->control_1, dev_private->me_regbase + ME_CONTROL_1);

 return 0;
}
