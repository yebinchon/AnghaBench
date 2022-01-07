
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
struct ata_eh_context {TYPE_1__ i; } ;
struct ata_link {int device; TYPE_2__* ap; struct ata_eh_context eh_context; } ;
struct TYPE_4__ {int pflags; } ;


 int ATA_EHI_QUIET ;
 int ATA_PFLAG_LOADING ;
 int EAGAIN ;
 int EOPNOTSUPP ;
 int KERN_INFO ;
 int KERN_WARNING ;
 int ata_dev_enabled (int ) ;
 int ata_link_printk (struct ata_link*,int ,char*,...) ;
 int sata_deb_timing_hotplug ;
 unsigned long* sata_ehc_deb_timing (struct ata_eh_context*) ;
 int sata_link_hardreset (struct ata_link*,int ,unsigned long,int *,int *) ;
 int sata_link_resume (struct ata_link*,unsigned long const*,unsigned long) ;

__attribute__((used)) static int nv_hardreset(struct ata_link *link, unsigned int *class,
   unsigned long deadline)
{
 struct ata_eh_context *ehc = &link->eh_context;




 if (!(link->ap->pflags & ATA_PFLAG_LOADING) &&
     !ata_dev_enabled(link->device))
  sata_link_hardreset(link, sata_deb_timing_hotplug, deadline,
        ((void*)0), ((void*)0));
 else {
  const unsigned long *timing = sata_ehc_deb_timing(ehc);
  int rc;

  if (!(ehc->i.flags & ATA_EHI_QUIET))
   ata_link_printk(link, KERN_INFO, "nv: skipping "
     "hardreset on occupied port\n");


  rc = sata_link_resume(link, timing, deadline);

  if (rc && rc != -EOPNOTSUPP)
   ata_link_printk(link, KERN_WARNING, "failed to resume "
     "link (errno=%d)\n", rc);
 }


 return -EAGAIN;
}
