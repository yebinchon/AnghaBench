
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct driver_data {scalar_t__ n_bytes; scalar_t__ tx; scalar_t__ tx_end; TYPE_1__* cur_chip; } ;
struct TYPE_2__ {int idle_tx_val; } ;


 int BIT_STAT_RXS ;
 int bfin_spi_dummy_read (struct driver_data*) ;
 int cpu_relax () ;
 int read_STAT (struct driver_data*) ;
 int write_TDBR (struct driver_data*,int ) ;

__attribute__((used)) static void bfin_spi_null_writer(struct driver_data *drv_data)
{
 u8 n_bytes = drv_data->n_bytes;
 u16 tx_val = drv_data->cur_chip->idle_tx_val;


 bfin_spi_dummy_read(drv_data);

 while (drv_data->tx < drv_data->tx_end) {
  write_TDBR(drv_data, tx_val);
  drv_data->tx += n_bytes;


  while (!(read_STAT(drv_data) & BIT_STAT_RXS))
   cpu_relax();

  bfin_spi_dummy_read(drv_data);
 }
}
