
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* dev; } ;
struct pgpath {TYPE_2__ path; } ;
struct multipath {int process_queued_ios; int lock; scalar_t__ queue_if_no_path; scalar_t__ queue_io; struct pgpath* current_pgpath; } ;
struct dm_target {scalar_t__ len; struct multipath* private; } ;
struct block_device {int bd_inode; } ;
typedef scalar_t__ fmode_t ;
struct TYPE_3__ {scalar_t__ mode; struct block_device* bdev; } ;


 int EIO ;
 int ENOTCONN ;
 int SECTOR_SHIFT ;
 int __blkdev_driver_ioctl (struct block_device*,scalar_t__,unsigned int,unsigned long) ;
 int __choose_pgpath (struct multipath*,int ) ;
 int current ;
 int fatal_signal_pending (int ) ;
 scalar_t__ i_size_read (int ) ;
 int kmultipathd ;
 int queue_work (int ,int *) ;
 int scsi_verify_blk_ioctl (int *,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int multipath_ioctl(struct dm_target *ti, unsigned int cmd,
      unsigned long arg)
{
 struct multipath *m = ti->private;
 struct pgpath *pgpath;
 struct block_device *bdev;
 fmode_t mode;
 unsigned long flags;
 int r;

 bdev = ((void*)0);
 mode = 0;
 r = 0;

 spin_lock_irqsave(&m->lock, flags);

 if (!m->current_pgpath)
  __choose_pgpath(m, 0);

 pgpath = m->current_pgpath;

 if (pgpath) {
  bdev = pgpath->path.dev->bdev;
  mode = pgpath->path.dev->mode;
 }

 if ((pgpath && m->queue_io) || (!pgpath && m->queue_if_no_path))
  r = -ENOTCONN;
 else if (!bdev)
  r = -EIO;

 spin_unlock_irqrestore(&m->lock, flags);




 if (!r && ti->len != i_size_read(bdev->bd_inode) >> SECTOR_SHIFT)
  r = scsi_verify_blk_ioctl(((void*)0), cmd);

 if (r == -ENOTCONN && !fatal_signal_pending(current))
  queue_work(kmultipathd, &m->process_queued_ios);

 return r ? : __blkdev_driver_ioctl(bdev, mode, cmd, arg);
}
