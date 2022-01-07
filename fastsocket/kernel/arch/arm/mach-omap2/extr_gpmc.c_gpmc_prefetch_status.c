
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPMC_PREFETCH_STATUS ;
 int gpmc_read_reg (int ) ;

int gpmc_prefetch_status(void)
{
 return gpmc_read_reg(GPMC_PREFETCH_STATUS);
}
