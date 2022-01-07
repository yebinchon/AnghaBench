
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tmio_nand {scalar_t__ fcr; } ;
struct TYPE_2__ {scalar_t__ platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mfd_cell {int (* disable ) (struct platform_device*) ;} ;


 scalar_t__ FCR_MODE ;
 int FCR_MODE_POWER_OFF ;
 int stub1 (struct platform_device*) ;
 int tmio_iowrite8 (int ,scalar_t__) ;

__attribute__((used)) static void tmio_hw_stop(struct platform_device *dev, struct tmio_nand *tmio)
{
 struct mfd_cell *cell = (struct mfd_cell *)dev->dev.platform_data;

 tmio_iowrite8(FCR_MODE_POWER_OFF, tmio->fcr + FCR_MODE);
 if (cell->disable)
  cell->disable(dev);
}
