
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char dma_lo; unsigned char dma_md; unsigned char dma_hi; } ;


 int MFPDELAY () ;
 TYPE_1__ st_dma ;

__attribute__((used)) static inline void SCSI_DMA_SETADR(unsigned long adr)
{
 st_dma.dma_lo = (unsigned char)adr;
 MFPDELAY();
 adr >>= 8;
 st_dma.dma_md = (unsigned char)adr;
 MFPDELAY();
 adr >>= 8;
 st_dma.dma_hi = (unsigned char)adr;
 MFPDELAY();
}
