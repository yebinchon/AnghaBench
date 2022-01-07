
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct driver_data {scalar_t__ tx; scalar_t__ tx_end; } ;


 int BIT_STAT_RXS ;
 int bfin_spi_dummy_read (struct driver_data*) ;
 int cpu_relax () ;
 int read_STAT (struct driver_data*) ;
 int write_TDBR (struct driver_data*,int ) ;

__attribute__((used)) static void bfin_spi_u8_writer(struct driver_data *drv_data)
{

 bfin_spi_dummy_read(drv_data);

 while (drv_data->tx < drv_data->tx_end) {
  write_TDBR(drv_data, (*(u8 *) (drv_data->tx++)));


  while (!(read_STAT(drv_data) & BIT_STAT_RXS))
   cpu_relax();

  bfin_spi_dummy_read(drv_data);
 }
}
