
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_device {int chip_select; int master; } ;
struct sh_sci_spi {TYPE_1__* info; } ;
struct TYPE_2__ {int (* chip_select ) (TYPE_1__*,int ,int) ;} ;


 struct sh_sci_spi* spi_master_get_devdata (int ) ;
 int stub1 (TYPE_1__*,int ,int) ;

__attribute__((used)) static void sh_sci_spi_chipselect(struct spi_device *dev, int value)
{
 struct sh_sci_spi *sp = spi_master_get_devdata(dev->master);

 if (sp->info && sp->info->chip_select)
  (sp->info->chip_select)(sp->info, dev->chip_select, value);
}
