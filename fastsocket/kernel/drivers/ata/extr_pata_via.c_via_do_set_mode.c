
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int dummy; } ;
struct ata_timing {scalar_t__ udma; scalar_t__ recover; scalar_t__ active; scalar_t__ rec8b; scalar_t__ act8b; scalar_t__ setup; } ;
struct ata_port {int port_no; TYPE_1__* host; } ;
struct ata_device {int devno; int pio_mode; } ;
struct TYPE_2__ {int dev; } ;


 int ATA_TIMING_8BIT ;
 struct ata_device* ata_dev_pair (struct ata_device*) ;
 int ata_timing_compute (struct ata_device*,int,struct ata_timing*,unsigned long,unsigned long) ;
 int ata_timing_merge (struct ata_timing*,struct ata_timing*,struct ata_timing*,int ) ;
 int clamp_val (scalar_t__,int,int) ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void via_do_set_mode(struct ata_port *ap, struct ata_device *adev, int mode, int tdiv, int set_ast, int udma_type)
{
 struct pci_dev *pdev = to_pci_dev(ap->host->dev);
 struct ata_device *peer = ata_dev_pair(adev);
 struct ata_timing t, p;
 static int via_clock = 33333;
 unsigned long T = 1000000000 / via_clock;
 unsigned long UT = T/tdiv;
 int ut;
 int offset = 3 - (2*ap->port_no) - adev->devno;


 ata_timing_compute(adev, mode, &t, T, UT);


 if (peer) {
  if (peer->pio_mode) {
   ata_timing_compute(peer, peer->pio_mode, &p, T, UT);
   ata_timing_merge(&p, &t, &t, ATA_TIMING_8BIT);
  }
 }


 if (set_ast) {
  u8 setup;
  int shift = 2 * offset;

  pci_read_config_byte(pdev, 0x4C, &setup);
  setup &= ~(3 << shift);
  setup |= clamp_val(t.setup, 1, 4) << shift;
  pci_write_config_byte(pdev, 0x4C, setup);
 }


 pci_write_config_byte(pdev, 0x4F - ap->port_no,
  ((clamp_val(t.act8b, 1, 16) - 1) << 4) | (clamp_val(t.rec8b, 1, 16) - 1));
 pci_write_config_byte(pdev, 0x48 + offset,
  ((clamp_val(t.active, 1, 16) - 1) << 4) | (clamp_val(t.recover, 1, 16) - 1));


 switch(udma_type) {
  default:


  case 33:
   ut = t.udma ? (0xe0 | (clamp_val(t.udma, 2, 5) - 2)) : 0x03;
   break;
  case 66:
   ut = t.udma ? (0xe8 | (clamp_val(t.udma, 2, 9) - 2)) : 0x0f;
   break;
  case 100:
   ut = t.udma ? (0xe0 | (clamp_val(t.udma, 2, 9) - 2)) : 0x07;
   break;
  case 133:
   ut = t.udma ? (0xe0 | (clamp_val(t.udma, 2, 9) - 2)) : 0x07;
   break;
 }


 if (udma_type && t.udma) {
  u8 cable80_status;


  pci_read_config_byte(pdev, 0x50 + offset, &cable80_status);
  cable80_status &= 0x10;

  pci_write_config_byte(pdev, 0x50 + offset, ut | cable80_status);
 }
}
