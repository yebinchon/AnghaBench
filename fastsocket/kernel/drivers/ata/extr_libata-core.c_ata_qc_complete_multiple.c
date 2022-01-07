
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ata_queued_cmd {int dummy; } ;
struct ata_port {int qc_active; } ;


 int EINVAL ;
 int KERN_ERR ;
 unsigned int __ffs (int) ;
 int ata_port_printk (struct ata_port*,int ,char*,int,int) ;
 int ata_qc_complete (struct ata_queued_cmd*) ;
 struct ata_queued_cmd* ata_qc_from_tag (struct ata_port*,unsigned int) ;
 scalar_t__ unlikely (int) ;

int ata_qc_complete_multiple(struct ata_port *ap, u32 qc_active)
{
 int nr_done = 0;
 u32 done_mask;

 done_mask = ap->qc_active ^ qc_active;

 if (unlikely(done_mask & qc_active)) {
  ata_port_printk(ap, KERN_ERR, "illegal qc_active transition "
    "(%08x->%08x)\n", ap->qc_active, qc_active);
  return -EINVAL;
 }

 while (done_mask) {
  struct ata_queued_cmd *qc;
  unsigned int tag = __ffs(done_mask);

  qc = ata_qc_from_tag(ap, tag);
  if (qc) {
   ata_qc_complete(qc);
   nr_done++;
  }
  done_mask &= ~(1 << tag);
 }

 return nr_done;
}
