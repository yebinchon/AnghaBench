
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; scalar_t__ state; } ;
struct imx_port {int timer; TYPE_1__ port; } ;


 scalar_t__ MCTRL_TIMEOUT ;
 int imx_mctrl_check (struct imx_port*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void imx_timeout(unsigned long data)
{
 struct imx_port *sport = (struct imx_port *)data;
 unsigned long flags;

 if (sport->port.state) {
  spin_lock_irqsave(&sport->port.lock, flags);
  imx_mctrl_check(sport);
  spin_unlock_irqrestore(&sport->port.lock, flags);

  mod_timer(&sport->timer, jiffies + MCTRL_TIMEOUT);
 }
}
