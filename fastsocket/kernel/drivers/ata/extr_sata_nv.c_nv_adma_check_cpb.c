
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct nv_adma_port_priv {TYPE_1__* cpb; } ;
struct ata_queued_cmd {int dummy; } ;
struct ata_eh_info {int action; int err_mask; } ;
struct TYPE_4__ {struct ata_eh_info eh_info; } ;
struct ata_port {TYPE_2__ link; struct nv_adma_port_priv* private_data; } ;
struct TYPE_3__ {int resp_flags; } ;


 int AC_ERR_DEV ;
 int AC_ERR_HSM ;
 int AC_ERR_OTHER ;
 int AC_ERR_SYSTEM ;
 int ATA_EH_RESET ;
 int DPRINTK (char*,int) ;
 int KERN_ERR ;
 int NV_CPB_RESP_ATA_ERR ;
 int NV_CPB_RESP_CMD_ERR ;
 int NV_CPB_RESP_CPB_ERR ;
 int NV_CPB_RESP_DONE ;
 int VPRINTK (char*,int,...) ;
 int __ata_ehi_push_desc (struct ata_eh_info*,char*,int) ;
 int ata_ehi_clear_desc (struct ata_eh_info*) ;
 int ata_ehi_push_desc (struct ata_eh_info*,char*) ;
 int ata_port_abort (struct ata_port*) ;
 int ata_port_freeze (struct ata_port*) ;
 int ata_port_printk (struct ata_port*,int ,char*,int) ;
 int ata_qc_complete (struct ata_queued_cmd*) ;
 struct ata_queued_cmd* ata_qc_from_tag (struct ata_port*,int) ;
 scalar_t__ likely (int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int nv_adma_check_cpb(struct ata_port *ap, int cpb_num, int force_err)
{
 struct nv_adma_port_priv *pp = ap->private_data;
 u8 flags = pp->cpb[cpb_num].resp_flags;

 VPRINTK("CPB %d, flags=0x%x\n", cpb_num, flags);

 if (unlikely((force_err ||
       flags & (NV_CPB_RESP_ATA_ERR |
         NV_CPB_RESP_CMD_ERR |
         NV_CPB_RESP_CPB_ERR)))) {
  struct ata_eh_info *ehi = &ap->link.eh_info;
  int freeze = 0;

  ata_ehi_clear_desc(ehi);
  __ata_ehi_push_desc(ehi, "CPB resp_flags 0x%x: ", flags);
  if (flags & NV_CPB_RESP_ATA_ERR) {
   ata_ehi_push_desc(ehi, "ATA error");
   ehi->err_mask |= AC_ERR_DEV;
  } else if (flags & NV_CPB_RESP_CMD_ERR) {
   ata_ehi_push_desc(ehi, "CMD error");
   ehi->err_mask |= AC_ERR_DEV;
  } else if (flags & NV_CPB_RESP_CPB_ERR) {
   ata_ehi_push_desc(ehi, "CPB error");
   ehi->err_mask |= AC_ERR_SYSTEM;
   freeze = 1;
  } else {

   ata_ehi_push_desc(ehi, "unknown");
   ehi->err_mask |= AC_ERR_OTHER;
   freeze = 1;
  }

  if (freeze)
   ata_port_freeze(ap);
  else
   ata_port_abort(ap);
  return 1;
 }

 if (likely(flags & NV_CPB_RESP_DONE)) {
  struct ata_queued_cmd *qc = ata_qc_from_tag(ap, cpb_num);
  VPRINTK("CPB flags done, flags=0x%x\n", flags);
  if (likely(qc)) {
   DPRINTK("Completing qc from tag %d\n", cpb_num);
   ata_qc_complete(qc);
  } else {
   struct ata_eh_info *ehi = &ap->link.eh_info;



   ata_port_printk(ap, KERN_ERR,
     "notifier for tag %d with no cmd?\n",
     cpb_num);
   ehi->err_mask |= AC_ERR_HSM;
   ehi->action |= ATA_EH_RESET;
   ata_port_freeze(ap);
   return 1;
  }
 }
 return 0;
}
