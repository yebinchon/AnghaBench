
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wait_queue_head_t ;
struct ubi_device {int peb_size; TYPE_1__* mtd; } ;
struct erase_info {int addr; int len; unsigned long priv; scalar_t__ state; int callback; TYPE_1__* mtd; } ;
typedef int loff_t ;
struct TYPE_2__ {int (* erase ) (TYPE_1__*,struct erase_info*) ;} ;


 int EINTR ;
 int EINVAL ;
 int EIO ;
 scalar_t__ MTD_ERASE_DONE ;
 scalar_t__ MTD_ERASE_FAILED ;
 int UBI_IO_RETRIES ;
 int dbg_err (char*,int) ;
 int dbg_io (char*,int,...) ;
 int erase_callback ;
 int init_waitqueue_head (int *) ;
 int memset (struct erase_info*,int ,int) ;
 int stub1 (TYPE_1__*,struct erase_info*) ;
 int ubi_dbg_check_all_ff (struct ubi_device*,int,int ,int) ;
 int ubi_dbg_dump_stack () ;
 scalar_t__ ubi_dbg_is_erase_failure () ;
 int ubi_err (char*,int,...) ;
 int wait_event_interruptible (int ,int) ;
 int yield () ;

__attribute__((used)) static int do_sync_erase(struct ubi_device *ubi, int pnum)
{
 int err, retries = 0;
 struct erase_info ei;
 wait_queue_head_t wq;

 dbg_io("erase PEB %d", pnum);

retry:
 init_waitqueue_head(&wq);
 memset(&ei, 0, sizeof(struct erase_info));

 ei.mtd = ubi->mtd;
 ei.addr = (loff_t)pnum * ubi->peb_size;
 ei.len = ubi->peb_size;
 ei.callback = erase_callback;
 ei.priv = (unsigned long)&wq;

 err = ubi->mtd->erase(ubi->mtd, &ei);
 if (err) {
  if (retries++ < UBI_IO_RETRIES) {
   dbg_io("error %d while erasing PEB %d, retry",
          err, pnum);
   yield();
   goto retry;
  }
  ubi_err("cannot erase PEB %d, error %d", pnum, err);
  ubi_dbg_dump_stack();
  return err;
 }

 err = wait_event_interruptible(wq, ei.state == MTD_ERASE_DONE ||
        ei.state == MTD_ERASE_FAILED);
 if (err) {
  ubi_err("interrupted PEB %d erasure", pnum);
  return -EINTR;
 }

 if (ei.state == MTD_ERASE_FAILED) {
  if (retries++ < UBI_IO_RETRIES) {
   dbg_io("error while erasing PEB %d, retry", pnum);
   yield();
   goto retry;
  }
  ubi_err("cannot erase PEB %d", pnum);
  ubi_dbg_dump_stack();
  return -EIO;
 }

 err = ubi_dbg_check_all_ff(ubi, pnum, 0, ubi->peb_size);
 if (err)
  return err > 0 ? -EINVAL : err;

 if (ubi_dbg_is_erase_failure() && !err) {
  dbg_err("cannot erase PEB %d (emulated)", pnum);
  return -EIO;
 }

 return 0;
}
