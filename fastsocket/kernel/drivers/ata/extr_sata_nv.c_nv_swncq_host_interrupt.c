
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_6__ {scalar_t__ defer_bits; } ;
struct nv_swncq_port_priv {int ncq_flags; int dhfis_bits; int dmafis_bits; int last_issue_tag; TYPE_2__ defer_queue; int sactive_block; int qc_active; } ;
struct ata_queued_cmd {int dummy; } ;
struct ata_eh_info {int action; int err_mask; int serror; } ;
struct TYPE_7__ {struct ata_eh_info eh_info; } ;
struct ata_port {int pflags; TYPE_1__* ops; int print_id; TYPE_3__ link; struct nv_swncq_port_priv* private_data; } ;
struct TYPE_5__ {int (* sff_check_status ) (struct ata_port*) ;int (* scr_write ) (TYPE_3__*,int ,int ) ;scalar_t__ (* scr_read ) (TYPE_3__*,int ,int *) ;} ;


 int AC_ERR_DEV ;
 int AC_ERR_HSM ;
 int ATA_BUSY ;
 int ATA_EH_RESET ;
 int ATA_ERR ;
 int ATA_PFLAG_FROZEN ;
 int DPRINTK (char*,...) ;
 int NV_SWNCQ_IRQ_BACKOUT ;
 int NV_SWNCQ_IRQ_DHREGFIS ;
 int NV_SWNCQ_IRQ_DMASETUP ;
 int NV_SWNCQ_IRQ_HOTPLUG ;
 int NV_SWNCQ_IRQ_SDBFIS ;
 int SCR_ERROR ;
 int ata_ehi_clear_desc (struct ata_eh_info*) ;
 int ata_ehi_push_desc (struct ata_eh_info*,char*,...) ;
 int ata_port_freeze (struct ata_port*) ;
 int ncq_saw_backout ;
 int ncq_saw_d2h ;
 int ncq_saw_dmas ;
 int ncq_saw_sdb ;
 int nv_swncq_dmafis (struct ata_port*) ;
 int nv_swncq_hotplug (struct ata_port*,int) ;
 int nv_swncq_irq_clear (struct ata_port*,int) ;
 int nv_swncq_issue_atacmd (struct ata_port*,struct ata_queued_cmd*) ;
 struct ata_queued_cmd* nv_swncq_qc_from_dq (struct ata_port*) ;
 int nv_swncq_sdbfis (struct ata_port*) ;
 int nv_swncq_tag (struct ata_port*) ;
 int readl (int ) ;
 int stub1 (struct ata_port*) ;
 scalar_t__ stub2 (TYPE_3__*,int ,int *) ;
 int stub3 (TYPE_3__*,int ,int ) ;
 int stub4 (struct ata_port*) ;

__attribute__((used)) static void nv_swncq_host_interrupt(struct ata_port *ap, u16 fis)
{
 struct nv_swncq_port_priv *pp = ap->private_data;
 struct ata_queued_cmd *qc;
 struct ata_eh_info *ehi = &ap->link.eh_info;
 u32 serror;
 u8 ata_stat;
 int rc = 0;

 ata_stat = ap->ops->sff_check_status(ap);
 nv_swncq_irq_clear(ap, fis);
 if (!fis)
  return;

 if (ap->pflags & ATA_PFLAG_FROZEN)
  return;

 if (fis & NV_SWNCQ_IRQ_HOTPLUG) {
  nv_swncq_hotplug(ap, fis);
  return;
 }

 if (!pp->qc_active)
  return;

 if (ap->ops->scr_read(&ap->link, SCR_ERROR, &serror))
  return;
 ap->ops->scr_write(&ap->link, SCR_ERROR, serror);

 if (ata_stat & ATA_ERR) {
  ata_ehi_clear_desc(ehi);
  ata_ehi_push_desc(ehi, "Ata error. fis:0x%X", fis);
  ehi->err_mask |= AC_ERR_DEV;
  ehi->serror |= serror;
  ehi->action |= ATA_EH_RESET;
  ata_port_freeze(ap);
  return;
 }

 if (fis & NV_SWNCQ_IRQ_BACKOUT) {



  pp->ncq_flags |= ncq_saw_backout;
 }

 if (fis & NV_SWNCQ_IRQ_SDBFIS) {
  pp->ncq_flags |= ncq_saw_sdb;
  DPRINTK("id 0x%x SWNCQ: qc_active 0x%X "
   "dhfis 0x%X dmafis 0x%X sactive 0x%X\n",
   ap->print_id, pp->qc_active, pp->dhfis_bits,
   pp->dmafis_bits, readl(pp->sactive_block));
  rc = nv_swncq_sdbfis(ap);
  if (rc < 0)
   goto irq_error;
 }

 if (fis & NV_SWNCQ_IRQ_DHREGFIS) {



  pp->dhfis_bits |= (0x1 << pp->last_issue_tag);
  pp->ncq_flags |= ncq_saw_d2h;
  if (pp->ncq_flags & (ncq_saw_sdb | ncq_saw_backout)) {
   ata_ehi_push_desc(ehi, "illegal fis transaction");
   ehi->err_mask |= AC_ERR_HSM;
   ehi->action |= ATA_EH_RESET;
   goto irq_error;
  }

  if (!(fis & NV_SWNCQ_IRQ_DMASETUP) &&
      !(pp->ncq_flags & ncq_saw_dmas)) {
   ata_stat = ap->ops->sff_check_status(ap);
   if (ata_stat & ATA_BUSY)
    goto irq_exit;

   if (pp->defer_queue.defer_bits) {
    DPRINTK("send next command\n");
    qc = nv_swncq_qc_from_dq(ap);
    nv_swncq_issue_atacmd(ap, qc);
   }
  }
 }

 if (fis & NV_SWNCQ_IRQ_DMASETUP) {



  pp->dmafis_bits |= (0x1 << nv_swncq_tag(ap));
  pp->ncq_flags |= ncq_saw_dmas;
  rc = nv_swncq_dmafis(ap);
 }

irq_exit:
 return;
irq_error:
 ata_ehi_push_desc(ehi, "fis:0x%x", fis);
 ata_port_freeze(ap);
 return;
}
