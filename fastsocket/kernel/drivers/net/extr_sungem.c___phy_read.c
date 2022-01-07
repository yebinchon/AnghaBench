
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct gem {scalar_t__ regs; } ;


 scalar_t__ MIF_FRAME ;
 int MIF_FRAME_DATA ;
 int MIF_FRAME_PHYAD ;
 int MIF_FRAME_REGAD ;
 int MIF_FRAME_TALSB ;
 int MIF_FRAME_TAMSB ;
 int readl (scalar_t__) ;
 int udelay (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static u16 __phy_read(struct gem *gp, int phy_addr, int reg)
{
 u32 cmd;
 int limit = 10000;

 cmd = (1 << 30);
 cmd |= (2 << 28);
 cmd |= (phy_addr << 23) & MIF_FRAME_PHYAD;
 cmd |= (reg << 18) & MIF_FRAME_REGAD;
 cmd |= (MIF_FRAME_TAMSB);
 writel(cmd, gp->regs + MIF_FRAME);

 while (--limit) {
  cmd = readl(gp->regs + MIF_FRAME);
  if (cmd & MIF_FRAME_TALSB)
   break;

  udelay(10);
 }

 if (!limit)
  cmd = 0xffff;

 return cmd & MIF_FRAME_DATA;
}
