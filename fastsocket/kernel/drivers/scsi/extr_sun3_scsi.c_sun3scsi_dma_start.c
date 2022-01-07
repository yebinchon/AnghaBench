
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UDC_CHN_START ;
 int UDC_CSR ;
 int sun3_udc_write (int ,int ) ;

__attribute__((used)) static inline int sun3scsi_dma_start(unsigned long count, unsigned char *data)
{

    sun3_udc_write(UDC_CHN_START, UDC_CSR);

    return 0;
}
