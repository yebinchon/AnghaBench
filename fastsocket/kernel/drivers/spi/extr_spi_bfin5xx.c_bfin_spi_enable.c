
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct driver_data {int dummy; } ;


 int BIT_CTL_ENABLE ;
 int read_CTRL (struct driver_data*) ;
 int write_CTRL (struct driver_data*,int) ;

__attribute__((used)) static void bfin_spi_enable(struct driver_data *drv_data)
{
 u16 cr;

 cr = read_CTRL(drv_data);
 write_CTRL(drv_data, (cr | BIT_CTL_ENABLE));
}
