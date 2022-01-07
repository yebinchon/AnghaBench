
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int flags; } ;
struct ata_queued_cmd {TYPE_2__ tf; } ;
struct TYPE_3__ {int active_tag; } ;
struct ata_port {TYPE_1__ link; } ;


 int ATA_TFLAG_POLLING ;
 int NV_INT_ADDED ;
 int NV_INT_DEV ;
 int NV_INT_REMOVED ;
 int ata_port_freeze (struct ata_port*) ;
 struct ata_queued_cmd* ata_qc_from_tag (struct ata_port*,int ) ;
 int ata_sff_check_status (struct ata_port*) ;
 int ata_sff_host_intr (struct ata_port*,struct ata_queued_cmd*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int nv_host_intr(struct ata_port *ap, u8 irq_stat)
{
 struct ata_queued_cmd *qc = ata_qc_from_tag(ap, ap->link.active_tag);


 if (unlikely(irq_stat & (NV_INT_ADDED | NV_INT_REMOVED))) {
  ata_port_freeze(ap);
  return 1;
 }


 if (!(irq_stat & NV_INT_DEV))
  return 0;


 if (unlikely(!qc || (qc->tf.flags & ATA_TFLAG_POLLING))) {
  ata_sff_check_status(ap);
  return 1;
 }


 return ata_sff_host_intr(ap, qc);
}
