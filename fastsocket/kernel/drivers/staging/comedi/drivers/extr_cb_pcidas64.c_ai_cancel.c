
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_device {int spinlock; } ;
struct TYPE_2__ {scalar_t__ ai_cmd_running; } ;


 int DEBUG_PRINT (char*) ;
 int abort_dma (struct comedi_device*,int) ;
 int disable_ai_pacing (struct comedi_device*) ;
 TYPE_1__* priv (struct comedi_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ai_cancel(struct comedi_device *dev, struct comedi_subdevice *s)
{
 unsigned long flags;

 spin_lock_irqsave(&dev->spinlock, flags);
 if (priv(dev)->ai_cmd_running == 0) {
  spin_unlock_irqrestore(&dev->spinlock, flags);
  return 0;
 }
 priv(dev)->ai_cmd_running = 0;
 spin_unlock_irqrestore(&dev->spinlock, flags);

 disable_ai_pacing(dev);

 abort_dma(dev, 1);

 DEBUG_PRINT("ai canceled\n");
 return 0;
}
