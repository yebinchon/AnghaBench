
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
 int dma_memcpy (void*,unsigned char*,int) ;
 int memcpy (void*,unsigned char*,int ) ;

int bf53x_resume_l1_mem(unsigned char *memptr)
{
 dma_memcpy((void *) L1_CODE_START, memptr, L1_CODE_LENGTH);
 dma_memcpy((void *) L1_DATA_A_START, memptr + L1_CODE_LENGTH,
   L1_DATA_A_LENGTH);
 dma_memcpy((void *) L1_DATA_B_START, memptr + L1_CODE_LENGTH +
   L1_DATA_A_LENGTH, L1_DATA_B_LENGTH);
 memcpy((void *) L1_SCRATCH_START, memptr + L1_CODE_LENGTH +
   L1_DATA_A_LENGTH + L1_DATA_B_LENGTH, L1_SCRATCH_LENGTH);

 return 0;
}
