
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct scsi_cmnd {int* cmnd; int cmd_len; } ;
struct ata_taskfile {int hob_nsect; int nsect; int flags; int command; int feature; scalar_t__ hob_feature; int protocol; } ;
struct ata_queued_cmd {struct ata_device* dev; struct scsi_cmnd* scsicmd; struct ata_taskfile tf; } ;
struct ata_device {int dma_mode; } ;


 int ATA_CMD_DSM ;
 int ATA_DSM_TRIM ;
 int ATA_PROT_DMA ;
 int ATA_TFLAG_DEVICE ;
 int ATA_TFLAG_ISADDR ;
 int ATA_TFLAG_LBA48 ;
 int ATA_TFLAG_WRITE ;
 int ILLEGAL_REQUEST ;
 int ata_qc_set_pc_nbytes (struct ata_queued_cmd*) ;
 int ata_scsi_set_sense (struct scsi_cmnd*,int ,int,int) ;
 int ata_set_lba_range_entries (void*,int,int ,int) ;
 void* page_address (int ) ;
 int scsi_16_lba_len (int const*,int *,int*) ;
 int scsi_sg_count (struct scsi_cmnd*) ;
 int scsi_sglist (struct scsi_cmnd*) ;
 int sg_page (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static unsigned int ata_scsi_write_same_xlat(struct ata_queued_cmd *qc)
{
 struct ata_taskfile *tf = &qc->tf;
 struct scsi_cmnd *scmd = qc->scsicmd;
 struct ata_device *dev = qc->dev;
 const u8 *cdb = scmd->cmnd;
 u64 block;
 u32 n_block;
 u32 size;
 void *buf;


 if (unlikely(!dev->dma_mode))
  goto invalid_fld;

 if (unlikely(scmd->cmd_len < 16))
  goto invalid_fld;
 scsi_16_lba_len(cdb, &block, &n_block);


 if (unlikely(!(cdb[1] & 0x8)))
  goto invalid_fld;





 if (!scsi_sg_count(scmd))
  goto invalid_fld;

 buf = page_address(sg_page(scsi_sglist(scmd)));
 size = ata_set_lba_range_entries(buf, 512, block, n_block);

 tf->protocol = ATA_PROT_DMA;
 tf->hob_feature = 0;
 tf->feature = ATA_DSM_TRIM;
 tf->hob_nsect = (size / 512) >> 8;
 tf->nsect = size / 512;
 tf->command = ATA_CMD_DSM;
 tf->flags |= ATA_TFLAG_ISADDR | ATA_TFLAG_DEVICE | ATA_TFLAG_LBA48 |
       ATA_TFLAG_WRITE;

 ata_qc_set_pc_nbytes(qc);

 return 0;

 invalid_fld:
 ata_scsi_set_sense(scmd, ILLEGAL_REQUEST, 0x24, 0x00);

 return 1;
}
