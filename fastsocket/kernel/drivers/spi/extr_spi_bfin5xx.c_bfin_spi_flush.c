
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct driver_data {int dummy; } ;


 int BIT_STAT_CLR ;
 int BIT_STAT_SPIF ;
 int cpu_relax () ;
 int loops_per_jiffy ;
 int read_STAT (struct driver_data*) ;
 int write_STAT (struct driver_data*,int ) ;

__attribute__((used)) static int bfin_spi_flush(struct driver_data *drv_data)
{
 unsigned long limit = loops_per_jiffy << 1;


 while (!(read_STAT(drv_data) & BIT_STAT_SPIF) && --limit)
  cpu_relax();

 write_STAT(drv_data, BIT_STAT_CLR);

 return limit;
}
