
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_tmu_priv {int clk; } ;


 int TCR ;
 int clk_disable (int ) ;
 int sh_tmu_start_stop_ch (struct sh_tmu_priv*,int ) ;
 int sh_tmu_write (struct sh_tmu_priv*,int ,int) ;

__attribute__((used)) static void sh_tmu_disable(struct sh_tmu_priv *p)
{

 sh_tmu_start_stop_ch(p, 0);


 sh_tmu_write(p, TCR, 0x0000);


 clk_disable(p->clk);
}
