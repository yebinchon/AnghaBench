
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_cmt_priv {int clk; } ;


 int CMCSR ;
 int clk_disable (int ) ;
 int sh_cmt_start_stop_ch (struct sh_cmt_priv*,int ) ;
 int sh_cmt_write (struct sh_cmt_priv*,int ,int ) ;

__attribute__((used)) static void sh_cmt_disable(struct sh_cmt_priv *p)
{

 sh_cmt_start_stop_ch(p, 0);


 sh_cmt_write(p, CMCSR, 0);


 clk_disable(p->clk);
}
