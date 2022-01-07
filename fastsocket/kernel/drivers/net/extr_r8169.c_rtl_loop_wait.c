
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_cond {int (* check ) (struct rtl8169_private*) ;int msg; } ;
struct rtl8169_private {int dev; } ;


 int drv ;
 int netif_err (struct rtl8169_private*,int ,int ,char*,int ,int,int,unsigned int) ;
 int stub1 (struct rtl8169_private*) ;

__attribute__((used)) static bool rtl_loop_wait(struct rtl8169_private *tp, const struct rtl_cond *c,
     void (*delay)(unsigned int), unsigned int d, int n,
     bool high)
{
 int i;

 for (i = 0; i < n; i++) {
  delay(d);
  if (c->check(tp) == high)
   return 1;
 }
 netif_err(tp, drv, tp->dev, "%s == %d (loop: %d, delay: %d).\n",
    c->msg, !high, n, d);
 return 0;
}
