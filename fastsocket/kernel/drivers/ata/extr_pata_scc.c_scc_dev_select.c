
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int device_addr; } ;
struct ata_port {TYPE_1__ ioaddr; } ;


 int ATA_DEV1 ;
 int ATA_DEVICE_OBS ;
 int ata_sff_pause (struct ata_port*) ;
 int out_be32 (int ,int) ;

__attribute__((used)) static void scc_dev_select (struct ata_port *ap, unsigned int device)
{
 u8 tmp;

 if (device == 0)
  tmp = ATA_DEVICE_OBS;
 else
  tmp = ATA_DEVICE_OBS | ATA_DEV1;

 out_be32(ap->ioaddr.device_addr, tmp);
 ata_sff_pause(ap);
}
