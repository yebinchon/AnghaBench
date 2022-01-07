
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef int u_long ;
typedef int u_char ;


 int HASR (int ) ;
 int HASR_MMI_BUSY ;
 int MMD (int ) ;
 int MMR (int ) ;
 int MMR_MMI_WR ;
 int inb (int ) ;
 int outb (int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static void
mmc_out(u_long base,
 u_short o,
 u_char d)
{
  int count = 0;


  while((count++ < 100) && (inb(HASR(base)) & HASR_MMI_BUSY))
    udelay(10);

  outb((u_char)((o << 1) | MMR_MMI_WR), MMR(base));
  outb(d, MMD(base));
}
