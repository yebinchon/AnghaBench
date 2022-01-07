
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_mtu2_priv {int clk; } ;


 int clk_disable (int ) ;
 int sh_mtu2_start_stop_ch (struct sh_mtu2_priv*,int ) ;

__attribute__((used)) static void sh_mtu2_disable(struct sh_mtu2_priv *p)
{

 sh_mtu2_start_stop_ch(p, 0);


 clk_disable(p->clk);
}
