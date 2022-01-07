
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct {int lock; int * mite_chan; } ;
struct comedi_cmd {int flags; } ;
struct comedi_async {struct comedi_cmd cmd; } ;


 int CMDF_WRITE ;
 int EIO ;
 int ni_tio_cmd_setup (struct ni_gpct*,struct comedi_async*) ;
 int ni_tio_input_cmd (struct ni_gpct*,struct comedi_async*) ;
 int ni_tio_output_cmd (struct ni_gpct*,struct comedi_async*) ;
 int printk (char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int ni_tio_cmd(struct ni_gpct *counter, struct comedi_async *async)
{
 struct comedi_cmd *cmd = &async->cmd;
 int retval = 0;
 unsigned long flags;

 spin_lock_irqsave(&counter->lock, flags);
 if (counter->mite_chan == ((void*)0)) {
  printk
      ("ni_tio: commands only supported with DMA.  Interrupt-driven commands not yet implemented.\n");
  retval = -EIO;
 } else {
  retval = ni_tio_cmd_setup(counter, async);
  if (retval == 0) {
   if (cmd->flags & CMDF_WRITE) {
    retval = ni_tio_output_cmd(counter, async);
   } else {
    retval = ni_tio_input_cmd(counter, async);
   }
  }
 }
 spin_unlock_irqrestore(&counter->lock, flags);
 return retval;
}
