
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sh_timer_config {int clk; } ;
struct sh_mtu2_priv {int rate; int periodic; int clk; TYPE_1__* pdev; } ;
struct TYPE_4__ {struct sh_timer_config* platform_data; } ;
struct TYPE_3__ {TYPE_2__ dev; } ;


 int HZ ;
 int TCNT ;
 int TCR ;
 int TGR ;
 int TIER ;
 int TIOR ;
 int TMDR ;
 int clk_enable (int ) ;
 int clk_get_rate (int ) ;
 int pr_err (char*,int ) ;
 int sh_mtu2_start_stop_ch (struct sh_mtu2_priv*,int) ;
 int sh_mtu2_write (struct sh_mtu2_priv*,int ,int) ;

__attribute__((used)) static int sh_mtu2_enable(struct sh_mtu2_priv *p)
{
 struct sh_timer_config *cfg = p->pdev->dev.platform_data;
 int ret;


 ret = clk_enable(p->clk);
 if (ret) {
  pr_err("sh_mtu2: cannot enable clock \"%s\"\n", cfg->clk);
  return ret;
 }


 sh_mtu2_start_stop_ch(p, 0);

 p->rate = clk_get_rate(p->clk) / 64;
 p->periodic = (p->rate + HZ/2) / HZ;


 sh_mtu2_write(p, TCR, 0x23);
 sh_mtu2_write(p, TIOR, 0);
 sh_mtu2_write(p, TGR, p->periodic);
 sh_mtu2_write(p, TCNT, 0);
 sh_mtu2_write(p, TMDR, 0);
 sh_mtu2_write(p, TIER, 0x01);


 sh_mtu2_start_stop_ch(p, 1);

 return 0;
}
