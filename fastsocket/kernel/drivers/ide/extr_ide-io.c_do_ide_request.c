
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct request_queue {int * queue_lock; TYPE_3__* queuedata; } ;
struct request {int cmd_flags; } ;
struct ide_host {int host_flags; TYPE_2__* cur_port; } ;
typedef scalar_t__ ide_startstop_t ;
struct TYPE_10__ {int lock; struct request* rq; TYPE_3__* cur_dev; struct ide_host* host; TYPE_1__* tp_ops; } ;
typedef TYPE_2__ ide_hwif_t ;
struct TYPE_11__ {int dev_flags; int queue; int sleep; TYPE_2__* hwif; } ;
typedef TYPE_3__ ide_drive_t ;
struct TYPE_9__ {int (* write_devctl ) (TYPE_2__*,int) ;} ;


 int ATA_DEVCTL_OBS ;
 int ATA_NIEN ;
 int IDE_DFLAG_BLOCKED ;
 int IDE_DFLAG_NIEN_QUIRK ;
 int IDE_DFLAG_PARKED ;
 int IDE_DFLAG_SLEEPING ;
 int IDE_HFLAG_SERIALIZE ;
 int REQ_PREEMPT ;
 int WARN_ON_ONCE (struct request*) ;
 struct request* blk_fetch_request (int ) ;
 int blk_plug_device (struct request_queue*) ;
 scalar_t__ blk_pm_request (struct request*) ;
 scalar_t__ blk_queue_flushing (struct request_queue*) ;
 int blk_remove_plug (struct request_queue*) ;
 int blk_requeue_request (struct request_queue*,struct request*) ;
 int elv_queue_empty (struct request_queue*) ;
 scalar_t__ ide_lock_host (struct ide_host*,TYPE_2__*) ;
 int ide_lock_port (TYPE_2__*) ;
 scalar_t__ ide_stopped ;
 int ide_unlock_host (struct ide_host*) ;
 int ide_unlock_port (TYPE_2__*) ;
 int jiffies ;
 int might_sleep () ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ start_request (TYPE_3__*,struct request*) ;
 int stub1 (TYPE_2__*,int) ;
 scalar_t__ time_after (int ,int ) ;

void do_ide_request(struct request_queue *q)
{
 ide_drive_t *drive = q->queuedata;
 ide_hwif_t *hwif = drive->hwif;
 struct ide_host *host = hwif->host;
 struct request *rq = ((void*)0);
 ide_startstop_t startstop;






 if (blk_queue_flushing(q))





  blk_remove_plug(q);

 spin_unlock_irq(q->queue_lock);


 might_sleep();

 if (ide_lock_host(host, hwif))
  goto plug_device_2;

 spin_lock_irq(&hwif->lock);

 if (!ide_lock_port(hwif)) {
  ide_hwif_t *prev_port;

  WARN_ON_ONCE(hwif->rq);
repeat:
  prev_port = hwif->host->cur_port;
  if (drive->dev_flags & IDE_DFLAG_SLEEPING &&
      time_after(drive->sleep, jiffies)) {
   ide_unlock_port(hwif);
   goto plug_device;
  }

  if ((hwif->host->host_flags & IDE_HFLAG_SERIALIZE) &&
      hwif != prev_port) {
   ide_drive_t *cur_dev =
    prev_port ? prev_port->cur_dev : ((void*)0);





   if (cur_dev &&
       (cur_dev->dev_flags & IDE_DFLAG_NIEN_QUIRK) == 0)
    prev_port->tp_ops->write_devctl(prev_port,
        ATA_NIEN |
        ATA_DEVCTL_OBS);

   hwif->host->cur_port = hwif;
  }
  hwif->cur_dev = drive;
  drive->dev_flags &= ~(IDE_DFLAG_SLEEPING | IDE_DFLAG_PARKED);

  spin_unlock_irq(&hwif->lock);
  spin_lock_irq(q->queue_lock);




  if (!rq)
   rq = blk_fetch_request(drive->queue);

  spin_unlock_irq(q->queue_lock);
  spin_lock_irq(&hwif->lock);

  if (!rq) {
   ide_unlock_port(hwif);
   goto out;
  }
  if ((drive->dev_flags & IDE_DFLAG_BLOCKED) &&
      blk_pm_request(rq) == 0 &&
      (rq->cmd_flags & REQ_PREEMPT) == 0) {

   ide_unlock_port(hwif);
   goto plug_device;
  }

  hwif->rq = rq;

  spin_unlock_irq(&hwif->lock);
  startstop = start_request(drive, rq);
  spin_lock_irq(&hwif->lock);

  if (startstop == ide_stopped) {
   rq = hwif->rq;
   hwif->rq = ((void*)0);
   goto repeat;
  }
 } else
  goto plug_device;
out:
 spin_unlock_irq(&hwif->lock);
 if (rq == ((void*)0))
  ide_unlock_host(host);
 spin_lock_irq(q->queue_lock);
 return;

plug_device:
 spin_unlock_irq(&hwif->lock);
 ide_unlock_host(host);
plug_device_2:
 spin_lock_irq(q->queue_lock);

 if (rq)
  blk_requeue_request(q, rq);
 if (!elv_queue_empty(q))
  blk_plug_device(q);
}
