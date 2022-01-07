
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
 int ni_writew (int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void e_series_win_out(struct comedi_device *dev, uint16_t data, int reg)
{
 unsigned long flags;

 spin_lock_irqsave(&devpriv->window_lock, flags);
 ni_writew(reg, Window_Address);
 ni_writew(data, Window_Data);
 spin_unlock_irqrestore(&devpriv->window_lock, flags);
}
