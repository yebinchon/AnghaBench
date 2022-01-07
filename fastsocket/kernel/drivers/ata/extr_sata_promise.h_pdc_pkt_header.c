
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ata_taskfile {int protocol; int flags; int ctl; } ;
typedef int dma_addr_t ;
typedef scalar_t__ __le32 ;


 int ATA_DEV1 ;
 int ATA_DEVICE_OBS ;


 int ATA_REG_DEVICE ;
 int ATA_TFLAG_WRITE ;
 int BUG () ;
 int PDC_PKT_CLEAR_BSY ;
 int PDC_PKT_NODATA ;
 int PDC_PKT_READ ;
 int PDC_REG_DEVCTL ;
 scalar_t__ cpu_to_le32 (int ) ;

__attribute__((used)) static inline unsigned int pdc_pkt_header(struct ata_taskfile *tf,
       dma_addr_t sg_table,
       unsigned int devno, u8 *buf)
{
 u8 dev_reg;
 __le32 *buf32 = (__le32 *) buf;




 switch (tf->protocol) {
 case 129:
  if (!(tf->flags & ATA_TFLAG_WRITE))
   buf32[0] = cpu_to_le32(PDC_PKT_READ);
  else
   buf32[0] = 0;
  break;

 case 128:
  buf32[0] = cpu_to_le32(PDC_PKT_NODATA);
  break;

 default:
  BUG();
  break;
 }

 buf32[1] = cpu_to_le32(sg_table);
 buf32[2] = 0;

 if (devno == 0)
  dev_reg = ATA_DEVICE_OBS;
 else
  dev_reg = ATA_DEVICE_OBS | ATA_DEV1;


 buf[12] = (1 << 5) | PDC_PKT_CLEAR_BSY | ATA_REG_DEVICE;
 buf[13] = dev_reg;


 buf[14] = (1 << 5) | PDC_REG_DEVCTL;
 buf[15] = tf->ctl;

 return 16;
}
