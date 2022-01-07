
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int data_addr; } ;
struct ata_port {int pflags; TYPE_2__ ioaddr; } ;
struct ata_device {int id; TYPE_1__* link; } ;
typedef unsigned char __le32 ;
struct TYPE_3__ {struct ata_port* ap; } ;


 int ATA_PFLAG_PIO32 ;
 int WRITE ;
 scalar_t__ ata_id_has_dword_io (int ) ;
 unsigned int ata_sff_data_xfer (struct ata_device*,unsigned char*,unsigned int,int) ;
 unsigned char cpu_to_le32 (int ) ;
 int ioread32 (int ) ;
 int ioread32_rep (int ,unsigned char*,unsigned int) ;
 int iowrite32 (int ,int ) ;
 int iowrite32_rep (int ,unsigned char*,unsigned int) ;
 int le32_to_cpu (unsigned char) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static unsigned int vlb32_data_xfer(struct ata_device *adev, unsigned char *buf,
     unsigned int buflen, int rw)
{
 struct ata_port *ap = adev->link->ap;
 int slop = buflen & 3;

 if (ata_id_has_dword_io(adev->id) && (slop == 0 || slop == 3)
     && (ap->pflags & ATA_PFLAG_PIO32)) {
  if (rw == WRITE)
   iowrite32_rep(ap->ioaddr.data_addr, buf, buflen >> 2);
  else
   ioread32_rep(ap->ioaddr.data_addr, buf, buflen >> 2);

  if (unlikely(slop)) {
   __le32 pad;
   if (rw == WRITE) {
    memcpy(&pad, buf + buflen - slop, slop);
    iowrite32(le32_to_cpu(pad), ap->ioaddr.data_addr);
   } else {
    pad = cpu_to_le32(ioread32(ap->ioaddr.data_addr));
    memcpy(buf + buflen - slop, &pad, slop);
   }
  }
  return (buflen + 3) & ~3;
 } else
  return ata_sff_data_xfer(adev, buf, buflen, rw);
}
