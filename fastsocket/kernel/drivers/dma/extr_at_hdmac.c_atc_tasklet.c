
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct at_dma_chan {int lock; int error_status; int chan_common; } ;


 int atc_advance_work (struct at_dma_chan*) ;
 scalar_t__ atc_chan_is_enabled (struct at_dma_chan*) ;
 int atc_handle_error (struct at_dma_chan*) ;
 int chan2dev (int *) ;
 int dev_err (int ,char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void atc_tasklet(unsigned long data)
{
 struct at_dma_chan *atchan = (struct at_dma_chan *)data;


 if (atc_chan_is_enabled(atchan)) {
  dev_err(chan2dev(&atchan->chan_common),
   "BUG: channel enabled in tasklet\n");
  return;
 }

 spin_lock(&atchan->lock);
 if (test_and_clear_bit(0, &atchan->error_status))
  atc_handle_error(atchan);
 else
  atc_advance_work(atchan);

 spin_unlock(&atchan->lock);
}
