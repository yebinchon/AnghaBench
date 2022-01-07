
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sh_tmu_priv {int rate; int clk; TYPE_2__* pdev; } ;
struct sh_timer_config {int clk; } ;
struct TYPE_3__ {struct sh_timer_config* platform_data; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int TCNT ;
 int TCOR ;
 int TCR ;
 int clk_enable (int ) ;
 int clk_get_rate (int ) ;
 int pr_err (char*,int ) ;
 int sh_tmu_start_stop_ch (struct sh_tmu_priv*,int) ;
 int sh_tmu_write (struct sh_tmu_priv*,int ,int) ;

__attribute__((used)) static int sh_tmu_enable(struct sh_tmu_priv *p)
{
 struct sh_timer_config *cfg = p->pdev->dev.platform_data;
 int ret;


 ret = clk_enable(p->clk);
 if (ret) {
  pr_err("sh_tmu: cannot enable clock \"%s\"\n", cfg->clk);
  return ret;
 }


 sh_tmu_start_stop_ch(p, 0);


 sh_tmu_write(p, TCOR, 0xffffffff);
 sh_tmu_write(p, TCNT, 0xffffffff);


 p->rate = clk_get_rate(p->clk) / 4;
 sh_tmu_write(p, TCR, 0x0000);


 sh_tmu_start_stop_ch(p, 1);

 return 0;
}
