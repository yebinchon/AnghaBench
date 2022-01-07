
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct driver_data {int dummy; } ;


 int read_RDBR (struct driver_data*) ;

__attribute__((used)) static inline void bfin_spi_dummy_read(struct driver_data *drv_data)
{
 (void) read_RDBR(drv_data);
}
