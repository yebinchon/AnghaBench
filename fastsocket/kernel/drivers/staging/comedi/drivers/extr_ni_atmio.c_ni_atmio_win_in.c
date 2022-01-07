
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
 int ni_readw (int) ;
 int ni_writew (int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static uint16_t ni_atmio_win_in(struct comedi_device *dev, int addr)
{
 unsigned long flags;
 uint16_t ret;

 spin_lock_irqsave(&devpriv->window_lock, flags);
 if (addr < 8) {
  ret = ni_readw(addr * 2);
 } else {
  ni_writew(addr, Window_Address);
  ret = ni_readw(Window_Data);
 }
 spin_unlock_irqrestore(&devpriv->window_lock, flags);

 return ret;
}
