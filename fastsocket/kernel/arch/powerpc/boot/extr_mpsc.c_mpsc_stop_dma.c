
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ MPSC_CHR_2 ;
 int MPSC_CHR_2_RA ;
 int MPSC_CHR_2_TA ;
 int SDMA_SDCM ;
 int SDMA_SDCM_AR ;
 int SDMA_SDCM_AT ;
 int in_le32 (int *) ;
 scalar_t__ mpsc_base ;
 int out_le32 (int *,int) ;
 int udelay (int) ;

__attribute__((used)) static void mpsc_stop_dma(volatile char *sdma_base)
{
 out_le32((u32 *)(mpsc_base + MPSC_CHR_2),MPSC_CHR_2_TA | MPSC_CHR_2_RA);
 out_le32((u32 *)(sdma_base + SDMA_SDCM), SDMA_SDCM_AR | SDMA_SDCM_AT);

 while ((in_le32((u32 *)(sdma_base + SDMA_SDCM))
    & (SDMA_SDCM_AR | SDMA_SDCM_AT)) != 0)
  udelay(100);
}
