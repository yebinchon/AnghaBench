
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sh_timer_config {int timer_bit; } ;
struct sh_mtu2_priv {TYPE_2__* pdev; } ;
struct TYPE_3__ {struct sh_timer_config* platform_data; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int TSTR ;
 int sh_mtu2_lock ;
 unsigned long sh_mtu2_read (struct sh_mtu2_priv*,int ) ;
 int sh_mtu2_write (struct sh_mtu2_priv*,int ,unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void sh_mtu2_start_stop_ch(struct sh_mtu2_priv *p, int start)
{
 struct sh_timer_config *cfg = p->pdev->dev.platform_data;
 unsigned long flags, value;


 spin_lock_irqsave(&sh_mtu2_lock, flags);
 value = sh_mtu2_read(p, TSTR);

 if (start)
  value |= 1 << cfg->timer_bit;
 else
  value &= ~(1 << cfg->timer_bit);

 sh_mtu2_write(p, TSTR, value);
 spin_unlock_irqrestore(&sh_mtu2_lock, flags);
}
