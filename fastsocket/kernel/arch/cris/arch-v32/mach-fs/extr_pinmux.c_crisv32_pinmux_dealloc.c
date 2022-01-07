
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int PORTS ;
 int crisv32_pinmux_init () ;
 int crisv32_pinmux_set (int) ;
 int pinmux_lock ;
 int pinmux_none ;
 int ** pins ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int crisv32_pinmux_dealloc(int port, int first_pin, int last_pin)
{
 int i;
 unsigned long flags;

 crisv32_pinmux_init();

 if (port > PORTS)
  return -EINVAL;

 spin_lock_irqsave(&pinmux_lock, flags);

 for (i = first_pin; i <= last_pin; i++)
  pins[port][i] = pinmux_none;

 crisv32_pinmux_set(port);
 spin_unlock_irqrestore(&pinmux_lock, flags);

 return 0;
}
