
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dnet {int dummy; } ;


 int DNET_INTERNAL_WRITE ;
 int MACREG_ADDR ;
 int MACREG_DATA ;
 int dnet_writel (struct dnet*,int,int ) ;
 int ndelay (int) ;

void dnet_writew_mac(struct dnet *bp, u16 reg, u16 val)
{

 dnet_writel(bp, val, MACREG_DATA);


 dnet_writel(bp, reg | DNET_INTERNAL_WRITE, MACREG_ADDR);



 ndelay(500);
}
