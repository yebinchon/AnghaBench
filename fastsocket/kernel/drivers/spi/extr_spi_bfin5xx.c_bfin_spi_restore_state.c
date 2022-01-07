
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct driver_data {TYPE_1__* pdev; struct chip_data* cur_chip; } ;
struct chip_data {int baud; int ctl_reg; } ;
struct TYPE_2__ {int dev; } ;


 int BIT_STAT_CLR ;
 int bfin_spi_cs_active (struct driver_data*,struct chip_data*) ;
 int bfin_spi_disable (struct driver_data*) ;
 int bfin_spi_enable (struct driver_data*) ;
 int dev_dbg (int *,char*) ;
 int write_BAUD (struct driver_data*,int ) ;
 int write_CTRL (struct driver_data*,int ) ;
 int write_STAT (struct driver_data*,int ) ;

__attribute__((used)) static void bfin_spi_restore_state(struct driver_data *drv_data)
{
 struct chip_data *chip = drv_data->cur_chip;


 write_STAT(drv_data, BIT_STAT_CLR);
 bfin_spi_disable(drv_data);
 dev_dbg(&drv_data->pdev->dev, "restoring spi ctl state\n");


 write_CTRL(drv_data, chip->ctl_reg);
 write_BAUD(drv_data, chip->baud);

 bfin_spi_enable(drv_data);
 bfin_spi_cs_active(drv_data, chip);
}
