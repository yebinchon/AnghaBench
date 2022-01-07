
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ control_2; scalar_t__ control_1; scalar_t__ dac_control; scalar_t__ me_regbase; } ;


 scalar_t__ ME_CONTROL_1 ;
 scalar_t__ ME_CONTROL_2 ;
 scalar_t__ ME_DAC_CONTROL ;
 scalar_t__ ME_RESET_INTERRUPT ;
 TYPE_1__* dev_private ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static int me_reset(struct comedi_device *dev)
{

 writew(0x00, dev_private->me_regbase + ME_CONTROL_1);
 writew(0x00, dev_private->me_regbase + ME_CONTROL_2);
 writew(0x00, dev_private->me_regbase + ME_RESET_INTERRUPT);
 writew(0x00, dev_private->me_regbase + ME_DAC_CONTROL);


 dev_private->dac_control = 0;
 dev_private->control_1 = 0;
 dev_private->control_2 = 0;

 return 0;
}
