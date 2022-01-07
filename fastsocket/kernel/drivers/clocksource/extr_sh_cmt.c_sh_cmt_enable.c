
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sh_timer_config {int clk; } ;
struct sh_cmt_priv {int width; int clk; TYPE_2__* pdev; } ;
struct TYPE_3__ {struct sh_timer_config* platform_data; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int CMCNT ;
 int CMCOR ;
 int CMCSR ;
 int clk_enable (int ) ;
 int clk_get_rate (int ) ;
 int pr_err (char*,int ) ;
 int sh_cmt_start_stop_ch (struct sh_cmt_priv*,int) ;
 int sh_cmt_write (struct sh_cmt_priv*,int ,int) ;

__attribute__((used)) static int sh_cmt_enable(struct sh_cmt_priv *p, unsigned long *rate)
{
 struct sh_timer_config *cfg = p->pdev->dev.platform_data;
 int ret;


 ret = clk_enable(p->clk);
 if (ret) {
  pr_err("sh_cmt: cannot enable clock \"%s\"\n", cfg->clk);
  return ret;
 }


 sh_cmt_start_stop_ch(p, 0);


 if (p->width == 16) {
  *rate = clk_get_rate(p->clk) / 512;
  sh_cmt_write(p, CMCSR, 0x43);
 } else {
  *rate = clk_get_rate(p->clk) / 8;
  sh_cmt_write(p, CMCSR, 0x01a4);
 }

 sh_cmt_write(p, CMCOR, 0xffffffff);
 sh_cmt_write(p, CMCNT, 0);


 sh_cmt_start_stop_ch(p, 1);
 return 0;
}
