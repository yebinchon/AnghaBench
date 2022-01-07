
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int L1_CODE_LENGTH ;
 scalar_t__ L1_CODE_START ;
 int L1_DATA_A_LENGTH ;
 scalar_t__ L1_DATA_A_START ;
 int L1_DATA_B_LENGTH ;
 scalar_t__ L1_DATA_B_START ;
 int L1_SCRATCH_LENGTH ;
 scalar_t__ L1_SCRATCH_START ;
 int dma_memcpy (unsigned char*,void const*,int) ;
 int memcpy (unsigned char*,void const*,int ) ;

int bf53x_suspend_l1_mem(unsigned char *memptr)
{
 dma_memcpy(memptr, (const void *) L1_CODE_START, L1_CODE_LENGTH);
 dma_memcpy(memptr + L1_CODE_LENGTH, (const void *) L1_DATA_A_START,
   L1_DATA_A_LENGTH);
 dma_memcpy(memptr + L1_CODE_LENGTH + L1_DATA_A_LENGTH,
   (const void *) L1_DATA_B_START, L1_DATA_B_LENGTH);
 memcpy(memptr + L1_CODE_LENGTH + L1_DATA_A_LENGTH +
   L1_DATA_B_LENGTH, (const void *) L1_SCRATCH_START,
   L1_SCRATCH_LENGTH);

 return 0;
}
