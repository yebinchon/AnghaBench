
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct dscc4_dev_priv {int dummy; } ;


 int CCR0 ;
 int CCR1 ;
 int CCR2 ;
 int HDLC_MAX_MRU ;
 int LengthCheck ;
 int RLCR ;
 int RxActivate ;
 int scc_writel (int,struct dscc4_dev_priv*,struct net_device*,int ) ;

__attribute__((used)) static void dscc4_init_registers(struct dscc4_dev_priv *dpriv,
     struct net_device *dev)
{

 scc_writel(0x00000000, dpriv, dev, CCR0);

 scc_writel(LengthCheck | (HDLC_MAX_MRU >> 5), dpriv, dev, RLCR);







 scc_writel(0x02408000, dpriv, dev, CCR1);


 scc_writel(0x00050008 & ~RxActivate, dpriv, dev, CCR2);


}
