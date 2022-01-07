
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_2__ {int window_lock; } ;


 int AO_Window_Address_611x ;
 int AO_Window_Data_611x ;
 TYPE_1__* devpriv ;
 unsigned short ni_readw (int ) ;
 int ni_writew (int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline unsigned short ni_ao_win_inw(struct comedi_device *dev, int addr)
{
 unsigned long flags;
 unsigned short data;

 spin_lock_irqsave(&devpriv->window_lock, flags);
 ni_writew(addr, AO_Window_Address_611x);
 data = ni_readw(AO_Window_Data_611x);
 spin_unlock_irqrestore(&devpriv->window_lock, flags);
 return data;
}
