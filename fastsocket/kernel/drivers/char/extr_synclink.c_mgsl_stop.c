
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int name; struct mgsl_struct* driver_data; } ;
struct mgsl_struct {int irq_spinlock; scalar_t__ tx_enabled; int device_name; } ;


 scalar_t__ DEBUG_LEVEL_INFO ;
 scalar_t__ debug_level ;
 scalar_t__ mgsl_paranoia_check (struct mgsl_struct*,int ,char*) ;
 int printk (char*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usc_stop_transmitter (struct mgsl_struct*) ;

__attribute__((used)) static void mgsl_stop(struct tty_struct *tty)
{
 struct mgsl_struct *info = tty->driver_data;
 unsigned long flags;

 if (mgsl_paranoia_check(info, tty->name, "mgsl_stop"))
  return;

 if ( debug_level >= DEBUG_LEVEL_INFO )
  printk("mgsl_stop(%s)\n",info->device_name);

 spin_lock_irqsave(&info->irq_spinlock,flags);
 if (info->tx_enabled)
   usc_stop_transmitter(info);
 spin_unlock_irqrestore(&info->irq_spinlock,flags);

}
