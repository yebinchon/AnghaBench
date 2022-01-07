
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_taskfile {int lbam; int lbah; } ;


 unsigned int ATA_DEV_ATA ;
 unsigned int ATA_DEV_ATAPI ;
 unsigned int ATA_DEV_PMP ;
 unsigned int ATA_DEV_SEMB ;
 unsigned int ATA_DEV_UNKNOWN ;
 int DPRINTK (char*) ;

unsigned int ata_dev_classify(const struct ata_taskfile *tf)
{
 if ((tf->lbam == 0) && (tf->lbah == 0)) {
  DPRINTK("found ATA device by sig\n");
  return ATA_DEV_ATA;
 }

 if ((tf->lbam == 0x14) && (tf->lbah == 0xeb)) {
  DPRINTK("found ATAPI device by sig\n");
  return ATA_DEV_ATAPI;
 }

 if ((tf->lbam == 0x69) && (tf->lbah == 0x96)) {
  DPRINTK("found PMP device by sig\n");
  return ATA_DEV_PMP;
 }

 if ((tf->lbam == 0x3c) && (tf->lbah == 0xc3)) {
  DPRINTK("found SEMB device by sig (could be ATA device)\n");
  return ATA_DEV_SEMB;
 }

 DPRINTK("unknown device\n");
 return ATA_DEV_UNKNOWN;
}
