
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ata_link {int dummy; } ;
struct TYPE_4__ {int probe_mask; int action; } ;
struct ata_eh_context {int did_probe_mask; int saved_ncq_enabled; scalar_t__* saved_xfer_mode; TYPE_2__ i; } ;
struct ata_device {int devno; int ering; TYPE_1__* link; } ;
struct TYPE_3__ {struct ata_eh_context eh_context; } ;


 int AC_ERR_OTHER ;
 int ATA_EH_PROBE_TRIALS ;
 int ATA_EH_RESET ;
 int ata_count_probe_trials_cb ;
 int ata_dev_init (struct ata_device*) ;
 struct ata_link* ata_dev_phys_link (struct ata_device*) ;
 int ata_eh_detach_dev (struct ata_device*) ;
 int ata_ering_map (int *,int ,int*) ;
 int ata_ering_record (int *,int ,int ) ;
 int sata_down_spd_limit (struct ata_link*,int) ;

__attribute__((used)) static int ata_eh_schedule_probe(struct ata_device *dev)
{
 struct ata_eh_context *ehc = &dev->link->eh_context;
 struct ata_link *link = ata_dev_phys_link(dev);
 int trials = 0;

 if (!(ehc->i.probe_mask & (1 << dev->devno)) ||
     (ehc->did_probe_mask & (1 << dev->devno)))
  return 0;

 ata_eh_detach_dev(dev);
 ata_dev_init(dev);
 ehc->did_probe_mask |= (1 << dev->devno);
 ehc->i.action |= ATA_EH_RESET;
 ehc->saved_xfer_mode[dev->devno] = 0;
 ehc->saved_ncq_enabled &= ~(1 << dev->devno);
 ata_ering_record(&dev->ering, 0, AC_ERR_OTHER);
 ata_ering_map(&dev->ering, ata_count_probe_trials_cb, &trials);

 if (trials > ATA_EH_PROBE_TRIALS)
  sata_down_spd_limit(link, 1);

 return 1;
}
