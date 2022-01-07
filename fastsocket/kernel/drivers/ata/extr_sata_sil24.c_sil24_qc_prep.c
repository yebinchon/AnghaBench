
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sil24_prb {int fis; void* ctrl; void* prot; } ;
struct TYPE_7__ {int cdb; struct sil24_sge* sge; struct sil24_prb prb; } ;
struct TYPE_6__ {struct sil24_sge* sge; struct sil24_prb prb; } ;
union sil24_cmd_block {TYPE_2__ atapi; TYPE_1__ ata; } ;
typedef int u16 ;
struct sil24_sge {int dummy; } ;
struct sil24_port_priv {union sil24_cmd_block* cmd_block; } ;
struct TYPE_10__ {int flags; int protocol; } ;
struct ata_queued_cmd {int flags; TYPE_4__* dev; TYPE_5__ tf; int cdb; int tag; struct ata_port* ap; } ;
struct ata_port {struct sil24_port_priv* private_data; } ;
struct TYPE_9__ {TYPE_3__* link; int cdb_len; } ;
struct TYPE_8__ {int pmp; } ;


 int ATA_QCFLAG_DMAMAP ;
 int ATA_TFLAG_WRITE ;
 int PRB_CTRL_PACKET_READ ;
 int PRB_CTRL_PACKET_WRITE ;
 int PRB_CTRL_PROTOCOL ;
 int PRB_PROT_NCQ ;
 int PRB_PROT_READ ;
 int PRB_PROT_WRITE ;
 int ata_is_atapi (int ) ;
 scalar_t__ ata_is_data (int ) ;
 scalar_t__ ata_is_ncq (int ) ;
 int ata_tf_to_fis (TYPE_5__*,int ,int,int ) ;
 void* cpu_to_le16 (int ) ;
 int memcpy (int ,int ,int ) ;
 int memset (int ,int ,int) ;
 int sil24_fill_sg (struct ata_queued_cmd*,struct sil24_sge*) ;
 size_t sil24_tag (int ) ;

__attribute__((used)) static void sil24_qc_prep(struct ata_queued_cmd *qc)
{
 struct ata_port *ap = qc->ap;
 struct sil24_port_priv *pp = ap->private_data;
 union sil24_cmd_block *cb;
 struct sil24_prb *prb;
 struct sil24_sge *sge;
 u16 ctrl = 0;

 cb = &pp->cmd_block[sil24_tag(qc->tag)];

 if (!ata_is_atapi(qc->tf.protocol)) {
  prb = &cb->ata.prb;
  sge = cb->ata.sge;
  if (ata_is_data(qc->tf.protocol)) {
   u16 prot = 0;
   ctrl = PRB_CTRL_PROTOCOL;
   if (ata_is_ncq(qc->tf.protocol))
    prot |= PRB_PROT_NCQ;
   if (qc->tf.flags & ATA_TFLAG_WRITE)
    prot |= PRB_PROT_WRITE;
   else
    prot |= PRB_PROT_READ;
   prb->prot = cpu_to_le16(prot);
  }
 } else {
  prb = &cb->atapi.prb;
  sge = cb->atapi.sge;
  memset(cb->atapi.cdb, 0, 32);
  memcpy(cb->atapi.cdb, qc->cdb, qc->dev->cdb_len);

  if (ata_is_data(qc->tf.protocol)) {
   if (qc->tf.flags & ATA_TFLAG_WRITE)
    ctrl = PRB_CTRL_PACKET_WRITE;
   else
    ctrl = PRB_CTRL_PACKET_READ;
  }
 }

 prb->ctrl = cpu_to_le16(ctrl);
 ata_tf_to_fis(&qc->tf, qc->dev->link->pmp, 1, prb->fis);

 if (qc->flags & ATA_QCFLAG_DMAMAP)
  sil24_fill_sg(qc, sge);
}
