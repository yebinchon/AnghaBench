
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct scsi_cmnd {int* cmnd; scalar_t__ sc_data_direction; TYPE_1__* device; } ;
struct ata_taskfile {scalar_t__ protocol; int hob_feature; int hob_nsect; int hob_lbal; int hob_lbam; int hob_lbah; int flags; int feature; int nsect; int lbal; int lbam; int lbah; int device; int command; } ;
struct ata_queued_cmd {int flags; int sect_size; struct ata_device* dev; struct scsi_cmnd* scsicmd; struct ata_taskfile tf; } ;
struct ata_device {scalar_t__ dma_mode; unsigned int multi_count; scalar_t__ devno; } ;
struct TYPE_2__ {int sector_size; } ;


 int const ATA_16 ;
 int ATA_CMD_SET_FEATURES ;
 int ATA_DEV1 ;
 scalar_t__ ATA_PROT_DMA ;
 scalar_t__ ATA_PROT_PIO ;
 scalar_t__ ATA_PROT_UNKNOWN ;
 int ATA_QCFLAG_QUIET ;
 int ATA_QCFLAG_RESULT_TF ;
 int ATA_SECT_SIZE ;
 int ATA_TFLAG_DEVICE ;
 int ATA_TFLAG_ISADDR ;
 int ATA_TFLAG_LBA48 ;
 int ATA_TFLAG_WRITE ;
 scalar_t__ DMA_TO_DEVICE ;
 int ILLEGAL_REQUEST ;
 int KERN_WARNING ;
 int SETFEATURES_XFER ;
 int ata_dev_printk (struct ata_device*,int ,char*,unsigned int) ;
 int ata_qc_set_pc_nbytes (struct ata_queued_cmd*) ;
 scalar_t__ ata_scsi_map_proto (int const) ;
 int ata_scsi_set_sense (struct scsi_cmnd*,int ,int,int) ;
 scalar_t__ is_multi_taskfile (struct ata_taskfile*) ;
 int libata_allow_tpm ;
 int scsi_bufflen (struct scsi_cmnd*) ;

__attribute__((used)) static unsigned int ata_scsi_pass_thru(struct ata_queued_cmd *qc)
{
 struct ata_taskfile *tf = &(qc->tf);
 struct scsi_cmnd *scmd = qc->scsicmd;
 struct ata_device *dev = qc->dev;
 const u8 *cdb = scmd->cmnd;

 if ((tf->protocol = ata_scsi_map_proto(cdb[1])) == ATA_PROT_UNKNOWN)
  goto invalid_fld;





 if (cdb[0] == ATA_16) {





  if (cdb[1] & 0x01) {
   tf->hob_feature = cdb[3];
   tf->hob_nsect = cdb[5];
   tf->hob_lbal = cdb[7];
   tf->hob_lbam = cdb[9];
   tf->hob_lbah = cdb[11];
   tf->flags |= ATA_TFLAG_LBA48;
  } else
   tf->flags &= ~ATA_TFLAG_LBA48;




  tf->feature = cdb[4];
  tf->nsect = cdb[6];
  tf->lbal = cdb[8];
  tf->lbam = cdb[10];
  tf->lbah = cdb[12];
  tf->device = cdb[13];
  tf->command = cdb[14];
 } else {



  tf->flags &= ~ATA_TFLAG_LBA48;

  tf->feature = cdb[3];
  tf->nsect = cdb[4];
  tf->lbal = cdb[5];
  tf->lbam = cdb[6];
  tf->lbah = cdb[7];
  tf->device = cdb[8];
  tf->command = cdb[9];
 }


 tf->device = dev->devno ?
  tf->device | ATA_DEV1 : tf->device & ~ATA_DEV1;

 switch (tf->command) {

 case 148:
 case 147:
 case 136:
 case 135:
  if (tf->protocol != ATA_PROT_PIO || tf->nsect != 1)
   goto invalid_fld;
  qc->sect_size = scsi_bufflen(scmd);
  break;


 case 157:
 case 159:
 case 158:

 case 150:
 case 149:
 case 144:

 case 156:
 case 146:
 case 145:
 case 154:
 case 153:
 case 143:
 case 142:
 case 141:
 case 140:
 case 139:
 case 138:
 case 137:
 case 131:
 case 130:
 case 155:
 case 134:
 case 133:
 case 132:
 case 152:
 case 151:
 case 129:
 case 128:
  qc->sect_size = scmd->device->sector_size;
  break;


 default:
  qc->sect_size = ATA_SECT_SIZE;
 }






 tf->flags |= ATA_TFLAG_ISADDR | ATA_TFLAG_DEVICE;
 if (scmd->sc_data_direction == DMA_TO_DEVICE)
  tf->flags |= ATA_TFLAG_WRITE;

 qc->flags |= ATA_QCFLAG_RESULT_TF | ATA_QCFLAG_QUIET;







 ata_qc_set_pc_nbytes(qc);


 if (tf->protocol == ATA_PROT_DMA && dev->dma_mode == 0)
  goto invalid_fld;


 if ((cdb[1] & 0xe0) && !is_multi_taskfile(tf))
  goto invalid_fld;

 if (is_multi_taskfile(tf)) {
  unsigned int multi_count = 1 << (cdb[1] >> 5);




  if (multi_count != dev->multi_count)
   ata_dev_printk(dev, KERN_WARNING,
           "invalid multi_count %u ignored\n",
           multi_count);
 }
 if (tf->command == ATA_CMD_SET_FEATURES &&
     tf->feature == SETFEATURES_XFER)
  goto invalid_fld;
 if (tf->command >= 0x5C && tf->command <= 0x5F && !libata_allow_tpm)
  goto invalid_fld;

 return 0;

 invalid_fld:
 ata_scsi_set_sense(scmd, ILLEGAL_REQUEST, 0x24, 0x00);

 return 1;
}
