
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {scalar_t__ bmdma_addr; } ;
struct ata_port {struct ata_device* private_data; TYPE_1__ ioaddr; } ;
struct ata_device {size_t pio_mode; } ;


 size_t XFER_PIO_0 ;
 int iowrite8 (int,scalar_t__) ;

__attribute__((used)) static void ninja32_set_piomode(struct ata_port *ap, struct ata_device *adev)
{
 static u16 pio_timing[5] = {
  0xd6, 0x85, 0x44, 0x33, 0x13
 };
 iowrite8(pio_timing[adev->pio_mode - XFER_PIO_0],
   ap->ioaddr.bmdma_addr + 0x1f);
 ap->private_data = adev;
}
