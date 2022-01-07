
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIO2_OUTPUT ;
 int GPIO2_PINSTATE ;
 int au_readl (int ) ;
 int au_sync_delay (int) ;
 int au_writel (int,int ) ;

__attribute__((used)) static int xxs1500_pcmcia_shutdown(void)
{

 au_writel(au_readl(GPIO2_PINSTATE) | (1<<14)|(1<<30),
   GPIO2_OUTPUT);
 au_sync_delay(100);


 au_writel(au_readl(GPIO2_PINSTATE) | (1<<4)|(1<<20),
   GPIO2_OUTPUT);
 au_sync_delay(100);
 return 0;
}
