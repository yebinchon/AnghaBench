
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct stir_cb {unsigned long* fifo_status; unsigned long speed; TYPE_1__* netdev; } ;
struct TYPE_3__ {int dev; } ;


 int EINTR ;
 int ESHUTDOWN ;
 int FIFOCTL_CLR ;
 unsigned long FIFOCTL_DIR ;
 unsigned long FIFOCTL_EMPTY ;
 int FIFO_REGS_SIZE ;
 int REG_FIFOCTL ;
 int STIR_FIFO_SIZE ;
 int current ;
 int dev_warn (int *,char*,int) ;
 int msleep (unsigned long) ;
 int netif_device_present (TYPE_1__*) ;
 int netif_running (TYPE_1__*) ;
 int pr_debug (char*,unsigned long,unsigned long) ;
 int read_reg (struct stir_cb*,int ,unsigned long*,int) ;
 scalar_t__ signal_pending (int ) ;
 scalar_t__ unlikely (int) ;
 int write_reg (struct stir_cb*,int ,int ) ;

__attribute__((used)) static int fifo_txwait(struct stir_cb *stir, int space)
{
 int err;
 unsigned long count, status;
 unsigned long prev_count = 0x1fff;


 for (;; prev_count = count) {
  err = read_reg(stir, REG_FIFOCTL, stir->fifo_status,
       FIFO_REGS_SIZE);
  if (unlikely(err != FIFO_REGS_SIZE)) {
   dev_warn(&stir->netdev->dev,
     "FIFO register read error: %d\n", err);

   return err;
  }

  status = stir->fifo_status[0];
  count = (unsigned)(stir->fifo_status[2] & 0x1f) << 8
   | stir->fifo_status[1];

  pr_debug("fifo status 0x%lx count %lu\n", status, count);


  if (!(status & FIFOCTL_DIR)
      || (status & FIFOCTL_EMPTY))
   return 0;

  if (signal_pending(current))
   return -EINTR;


  if (!netif_running(stir->netdev)
      || !netif_device_present(stir->netdev))
   return -ESHUTDOWN;


  if (space >= 0 && STIR_FIFO_SIZE - 4 > space + count)
   return 0;


  if (prev_count < count)
   break;


  msleep((count * 8000) / stir->speed);
 }

 err = write_reg(stir, REG_FIFOCTL, FIFOCTL_CLR);
 if (err)
  return err;
 err = write_reg(stir, REG_FIFOCTL, 0);
 if (err)
  return err;

 return 0;
}
