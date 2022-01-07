
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stlport {int dummy; } ;
struct stlpanel {struct stlport** ports; } ;


 unsigned int IVR_CHANMASK ;
 unsigned int IVR_RXDATA ;
 unsigned int IVR_TXDATA ;
 scalar_t__ XP_IACK ;
 int brd_lock ;
 unsigned int inb (scalar_t__) ;
 int outb (int ,unsigned int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stl_sc26198otherisr (struct stlport*,unsigned int) ;
 int stl_sc26198rxisr (struct stlport*,unsigned int) ;
 int stl_sc26198txisr (struct stlport*) ;

__attribute__((used)) static void stl_sc26198intr(struct stlpanel *panelp, unsigned int iobase)
{
 struct stlport *portp;
 unsigned int iack;

 spin_lock(&brd_lock);





 outb(0, (iobase + 1));

 iack = inb(iobase + XP_IACK);
 portp = panelp->ports[(iack & IVR_CHANMASK) + ((iobase & 0x4) << 1)];

 if (iack & IVR_RXDATA)
  stl_sc26198rxisr(portp, iack);
 else if (iack & IVR_TXDATA)
  stl_sc26198txisr(portp);
 else
  stl_sc26198otherisr(portp, iack);

 spin_unlock(&brd_lock);
}
