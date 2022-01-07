
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;


 unsigned int EV_SND ;
 int PIT_TICK_RATE ;


 int i8253_lock ;
 int inb_p (int) ;
 int outb (int,int) ;
 int outb_p (int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int pcspkr_event(struct input_dev *dev, unsigned int type, unsigned int code, int value)
{
 unsigned int count = 0;
 unsigned long flags;

 if (type != EV_SND)
  return -1;

 switch (code) {
  case 129: if (value) value = 1000;
  case 128: break;
  default: return -1;
 }

 if (value > 20 && value < 32767)
  count = PIT_TICK_RATE / value;

 spin_lock_irqsave(&i8253_lock, flags);

 if (count) {

  outb_p(0xB6, 0x43);

  outb_p(count & 0xff, 0x42);
  outb((count >> 8) & 0xff, 0x42);

  outb_p(inb_p(0x61) | 3, 0x61);
 } else {

  outb(inb_p(0x61) & 0xFC, 0x61);
 }

 spin_unlock_irqrestore(&i8253_lock, flags);

 return 0;
}
