
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int CS_NUM_SHIFT ;
 int DMA_MPU_MODE ;
 int EBUSY ;
 int ENABLE_PREFETCH ;
 int GPMC_PREFETCH_CONFIG1 ;
 int GPMC_PREFETCH_CONFIG2 ;
 int GPMC_PREFETCH_CONTROL ;
 int PREFETCH_FIFOTHRESHOLD ;
 int gpmc_read_reg (int ) ;
 int gpmc_write_reg (int ,int) ;

int gpmc_prefetch_enable(int cs, int dma_mode,
    unsigned int u32_count, int is_write)
{
 uint32_t prefetch_config1;

 if (!(gpmc_read_reg(GPMC_PREFETCH_CONTROL))) {

  gpmc_write_reg(GPMC_PREFETCH_CONFIG2, u32_count);




  prefetch_config1 = ((cs << CS_NUM_SHIFT) |
     PREFETCH_FIFOTHRESHOLD |
     ENABLE_PREFETCH |
     (dma_mode << DMA_MPU_MODE) |
     (0x1 & is_write));
  gpmc_write_reg(GPMC_PREFETCH_CONFIG1, prefetch_config1);
 } else {
  return -EBUSY;
 }

 gpmc_write_reg(GPMC_PREFETCH_CONTROL, 0x1);

 return 0;
}
