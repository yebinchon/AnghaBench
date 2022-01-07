
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {scalar_t__ irq; } ;


 int CSR_5380_INTR ;
 int CSR_HOST_BUF_NOT_RDY ;
 int DTC_BLK_CNT ;
 int DTC_CONTROL_REG ;
 scalar_t__ DTC_DATA_BUF ;
 int D_CR_ACCESS ;
 int MODE_REG ;
 int MR_DMA_MODE ;
 int MR_ENABLE_EOP_INTR ;
 int NCR5380_local_declare () ;
 int NCR5380_read (int ) ;
 int NCR5380_setup (struct Scsi_Host*) ;
 int NCR5380_write (int ,int) ;
 int RESET_PARITY_INTERRUPT_REG ;
 scalar_t__ SCSI_IRQ_NONE ;
 int TARGET_COMMAND_REG ;
 int TCR_LAST_BYTE_SENT ;
 scalar_t__ base ;
 int dtc_wmaxi ;
 int memcpy_toio (scalar_t__,unsigned char*,int) ;
 int rtrc (int) ;

__attribute__((used)) static inline int NCR5380_pwrite(struct Scsi_Host *instance, unsigned char *src, int len)
{
 int i;
 NCR5380_local_declare();
 NCR5380_setup(instance);

 NCR5380_read(RESET_PARITY_INTERRUPT_REG);
 NCR5380_write(MODE_REG, MR_ENABLE_EOP_INTR | MR_DMA_MODE);

 if (instance->irq == SCSI_IRQ_NONE)
  NCR5380_write(DTC_CONTROL_REG, 0);
 else
  NCR5380_write(DTC_CONTROL_REG, CSR_5380_INTR);
 NCR5380_write(DTC_BLK_CNT, len >> 7);
 for (i = 0; len > 0; ++i) {
  rtrc(5);

  while (NCR5380_read(DTC_CONTROL_REG) & CSR_HOST_BUF_NOT_RDY)
   ++i;
  rtrc(3);
  memcpy_toio(base + DTC_DATA_BUF, src, 128);
  src += 128;
  len -= 128;
 }
 rtrc(4);
 while (!(NCR5380_read(DTC_CONTROL_REG) & D_CR_ACCESS))
  ++i;
 rtrc(6);

 while (!(NCR5380_read(TARGET_COMMAND_REG) & TCR_LAST_BYTE_SENT))
  ++i;
 rtrc(7);

 NCR5380_write(MODE_REG, 0);
 rtrc(0);
 if (i > dtc_wmaxi)
  dtc_wmaxi = i;
 return (0);
}
