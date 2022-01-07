
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPMC_PREFETCH_CONFIG1 ;
 int GPMC_PREFETCH_CONTROL ;
 int gpmc_write_reg (int ,int) ;

void gpmc_prefetch_reset(void)
{

 gpmc_write_reg(GPMC_PREFETCH_CONTROL, 0x0);


 gpmc_write_reg(GPMC_PREFETCH_CONFIG1, 0x0);
}
