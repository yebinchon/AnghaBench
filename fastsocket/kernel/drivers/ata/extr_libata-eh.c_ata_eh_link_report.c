
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int tries_buf ;
struct ata_taskfile {size_t protocol; int command; int feature; int device; int hob_lbah; int hob_lbam; int hob_lbal; int hob_nsect; int hob_feature; int lbah; int lbam; int lbal; int nsect; } ;
struct ata_queued_cmd {int flags; scalar_t__ err_mask; int* cdb; scalar_t__ dma_dir; int nbytes; int dev; int tag; scalar_t__ scsicmd; struct ata_taskfile tf; struct ata_taskfile result_tf; } ;
struct ata_port {int pflags; scalar_t__ eh_tries; } ;
struct TYPE_2__ {int flags; char* desc; int serror; int action; int err_mask; scalar_t__ dev; } ;
struct ata_eh_context {TYPE_1__ i; } ;
struct ata_link {int sactive; struct ata_eh_context eh_context; struct ata_port* ap; } ;
typedef int data_buf ;
typedef int cdb_buf ;


 scalar_t__ AC_ERR_DEV ;
 int AC_ERR_NCQ ;


 int ATA_ABORTED ;
 int ATA_BUSY ;
 int ATA_CMD_PACKET ;
 int ATA_DF ;
 int ATA_DRDY ;
 int ATA_DRQ ;
 int ATA_EHI_QUIET ;
 scalar_t__ ATA_EH_MAX_TRIES ;
 int ATA_ERR ;
 int ATA_ICRC ;
 int ATA_IDNF ;
 int ATA_MAX_QUEUE ;
 int ATA_PFLAG_FROZEN ;



 int ATA_QCFLAG_FAILED ;
 int ATA_QCFLAG_QUIET ;
 int ATA_QCFLAG_SENSE_VALID ;
 int ATA_UNC ;


 scalar_t__ DMA_NONE ;

 int KERN_ERR ;
 int SERR_10B_8B_ERR ;
 int SERR_COMM_RECOVERED ;
 int SERR_COMM_WAKE ;
 int SERR_CRC ;
 int SERR_DATA ;
 int SERR_DATA_RECOVERED ;
 int SERR_DEV_XCHG ;
 int SERR_DISPARITY ;
 int SERR_HANDSHAKE ;
 int SERR_INTERNAL ;
 int SERR_LINK_SEQ_ERR ;
 int SERR_PERSISTENT ;
 int SERR_PHYRDY_CHG ;
 int SERR_PHY_INT_ERR ;
 int SERR_PROTOCOL ;
 int SERR_TRANS_ST_ERROR ;
 int SERR_UNRECOG_FIS ;
 struct ata_queued_cmd* __ata_qc_from_tag (struct ata_port*,int) ;
 struct ata_link* ata_dev_phys_link (int ) ;
 int ata_dev_printk (int ,int ,char*,...) ;
 int ata_err_string (scalar_t__) ;
 char* ata_get_cmd_descript (int) ;
 scalar_t__ ata_is_atapi (size_t) ;
 int ata_link_printk (struct ata_link*,int ,char*,char const*,...) ;
 int memset (char*,int ,int) ;
 int scsi_print_command (scalar_t__) ;
 int snprintf (char*,int,char*,...) ;

__attribute__((used)) static void ata_eh_link_report(struct ata_link *link)
{
 struct ata_port *ap = link->ap;
 struct ata_eh_context *ehc = &link->eh_context;
 const char *frozen, *desc;
 char tries_buf[6];
 int tag, nr_failed = 0;

 if (ehc->i.flags & ATA_EHI_QUIET)
  return;

 desc = ((void*)0);
 if (ehc->i.desc[0] != '\0')
  desc = ehc->i.desc;

 for (tag = 0; tag < ATA_MAX_QUEUE; tag++) {
  struct ata_queued_cmd *qc = __ata_qc_from_tag(ap, tag);

  if (!(qc->flags & ATA_QCFLAG_FAILED) ||
      ata_dev_phys_link(qc->dev) != link ||
      ((qc->flags & ATA_QCFLAG_QUIET) &&
       qc->err_mask == AC_ERR_DEV))
   continue;
  if (qc->flags & ATA_QCFLAG_SENSE_VALID && !qc->err_mask)
   continue;

  nr_failed++;
 }

 if (!nr_failed && !ehc->i.err_mask)
  return;

 frozen = "";
 if (ap->pflags & ATA_PFLAG_FROZEN)
  frozen = " frozen";

 memset(tries_buf, 0, sizeof(tries_buf));
 if (ap->eh_tries < ATA_EH_MAX_TRIES)
  snprintf(tries_buf, sizeof(tries_buf) - 1, " t%d",
    ap->eh_tries);

 if (ehc->i.dev) {
  ata_dev_printk(ehc->i.dev, KERN_ERR, "exception Emask 0x%x "
          "SAct 0x%x SErr 0x%x action 0x%x%s%s\n",
          ehc->i.err_mask, link->sactive, ehc->i.serror,
          ehc->i.action, frozen, tries_buf);
  if (desc)
   ata_dev_printk(ehc->i.dev, KERN_ERR, "%s\n", desc);
 } else {
  ata_link_printk(link, KERN_ERR, "exception Emask 0x%x "
    "SAct 0x%x SErr 0x%x action 0x%x%s%s\n",
    ehc->i.err_mask, link->sactive, ehc->i.serror,
    ehc->i.action, frozen, tries_buf);
  if (desc)
   ata_link_printk(link, KERN_ERR, "%s\n", desc);
 }
 for (tag = 0; tag < ATA_MAX_QUEUE; tag++) {
  struct ata_queued_cmd *qc = __ata_qc_from_tag(ap, tag);
  struct ata_taskfile *cmd = &qc->tf, *res = &qc->result_tf;
  const u8 *cdb = qc->cdb;
  char data_buf[20] = "";
  char cdb_buf[70] = "";

  if (!(qc->flags & ATA_QCFLAG_FAILED) ||
      ata_dev_phys_link(qc->dev) != link || !qc->err_mask)
   continue;

  if (qc->dma_dir != DMA_NONE) {
   static const char *dma_str[] = {
    [130] = "bidi",
    [128] = "out",
    [129] = "in",
   };
   static const char *prot_str[] = {
    [131] = "pio",
    [133] = "dma",
    [132] = "ncq",
    [134] = "pio",
    [135] = "dma",
   };

   snprintf(data_buf, sizeof(data_buf), " %s %u %s",
     prot_str[qc->tf.protocol], qc->nbytes,
     dma_str[qc->dma_dir]);
  }

  if (ata_is_atapi(qc->tf.protocol)) {
   if (qc->scsicmd)
    scsi_print_command(qc->scsicmd);
   else
    snprintf(cdb_buf, sizeof(cdb_buf),
     "cdb %02x %02x %02x %02x %02x %02x %02x %02x  "
     "%02x %02x %02x %02x %02x %02x %02x %02x\n         ",
     cdb[0], cdb[1], cdb[2], cdb[3],
     cdb[4], cdb[5], cdb[6], cdb[7],
     cdb[8], cdb[9], cdb[10], cdb[11],
     cdb[12], cdb[13], cdb[14], cdb[15]);
  } else {
   const char *descr = ata_get_cmd_descript(cmd->command);
   if (descr)
    ata_dev_printk(qc->dev, KERN_ERR,
     "failed command: %s\n", descr);
  }

  ata_dev_printk(qc->dev, KERN_ERR,
   "cmd %02x/%02x:%02x:%02x:%02x:%02x/%02x:%02x:%02x:%02x:%02x/%02x "
   "tag %d%s\n         %s"
   "res %02x/%02x:%02x:%02x:%02x:%02x/%02x:%02x:%02x:%02x:%02x/%02x "
   "Emask 0x%x (%s)%s\n",
   cmd->command, cmd->feature, cmd->nsect,
   cmd->lbal, cmd->lbam, cmd->lbah,
   cmd->hob_feature, cmd->hob_nsect,
   cmd->hob_lbal, cmd->hob_lbam, cmd->hob_lbah,
   cmd->device, qc->tag, data_buf, cdb_buf,
   res->command, res->feature, res->nsect,
   res->lbal, res->lbam, res->lbah,
   res->hob_feature, res->hob_nsect,
   res->hob_lbal, res->hob_lbam, res->hob_lbah,
   res->device, qc->err_mask, ata_err_string(qc->err_mask),
   qc->err_mask & AC_ERR_NCQ ? " <F>" : "");
 }
}
