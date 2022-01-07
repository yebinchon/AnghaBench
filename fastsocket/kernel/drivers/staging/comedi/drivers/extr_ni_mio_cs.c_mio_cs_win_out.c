
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int window_lock; } ;


 int Window_Address ;
 int Window_Data ;
 TYPE_1__* devpriv ;
 int ni_writew (int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void mio_cs_win_out(struct comedi_device *dev, uint16_t data, int addr)
{
 unsigned long flags;

 spin_lock_irqsave(&devpriv->window_lock, flags);
 if (addr < 8) {
  ni_writew(data, addr * 2);
 } else {
  ni_writew(addr, Window_Address);
  ni_writew(data, Window_Data);
 }
 spin_unlock_irqrestore(&devpriv->window_lock, flags);
}
