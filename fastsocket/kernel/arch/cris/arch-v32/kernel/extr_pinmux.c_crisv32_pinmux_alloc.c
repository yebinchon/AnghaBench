
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum pin_mode { ____Placeholder_pin_mode } pin_mode ;


 int EINVAL ;
 int EPERM ;
 int PORTS ;
 int crisv32_pinmux_init () ;
 int crisv32_pinmux_set (int) ;
 int panic (char*) ;
 scalar_t__ pinmux_gpio ;
 int pinmux_lock ;
 scalar_t__ pinmux_none ;
 scalar_t__** pins ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
crisv32_pinmux_alloc(int port, int first_pin, int last_pin, enum pin_mode mode)
{
 int i;
 unsigned long flags;

 crisv32_pinmux_init();

 if (port > PORTS)
  return -EINVAL;

 spin_lock_irqsave(&pinmux_lock, flags);

 for (i = first_pin; i <= last_pin; i++)
 {
  if ((pins[port][i] != pinmux_none) && (pins[port][i] != pinmux_gpio) &&
      (pins[port][i] != mode))
  {
   spin_unlock_irqrestore(&pinmux_lock, flags);



   return -EPERM;
  }
 }

 for (i = first_pin; i <= last_pin; i++)
  pins[port][i] = mode;

 crisv32_pinmux_set(port);

 spin_unlock_irqrestore(&pinmux_lock, flags);

 return 0;
}
