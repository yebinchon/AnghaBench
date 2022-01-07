
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct driver_data {scalar_t__ rx; scalar_t__ rx_end; TYPE_1__* cur_chip; } ;
struct TYPE_2__ {int idle_tx_val; } ;


 int BIT_STAT_RXS ;
 int bfin_spi_dummy_read (struct driver_data*) ;
 int cpu_relax () ;
 int read_RDBR (struct driver_data*) ;
 int read_STAT (struct driver_data*) ;
 int write_TDBR (struct driver_data*,int ) ;

__attribute__((used)) static void bfin_spi_u16_reader(struct driver_data *drv_data)
{
 u16 tx_val = drv_data->cur_chip->idle_tx_val;


 bfin_spi_dummy_read(drv_data);

 while (drv_data->rx < drv_data->rx_end) {
  write_TDBR(drv_data, tx_val);
  while (!(read_STAT(drv_data) & BIT_STAT_RXS))
   cpu_relax();
  *(u16 *) (drv_data->rx) = read_RDBR(drv_data);
  drv_data->rx += 2;
 }
}
