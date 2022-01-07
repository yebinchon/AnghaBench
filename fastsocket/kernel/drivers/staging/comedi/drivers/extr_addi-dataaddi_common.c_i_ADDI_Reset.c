
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_2__ {int (* i_hwdrv_Reset ) (struct comedi_device*) ;} ;


 int stub1 (struct comedi_device*) ;
 TYPE_1__* this_board ;

__attribute__((used)) static int i_ADDI_Reset(struct comedi_device *dev)
{

 this_board->i_hwdrv_Reset(dev);
 return 0;
}
