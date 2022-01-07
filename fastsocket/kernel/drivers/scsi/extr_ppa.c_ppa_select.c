
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned short base; } ;
typedef TYPE_1__ ppa_struct ;


 int PPA_SELECT_TMO ;
 int r_str (unsigned short) ;
 int udelay (int) ;
 int w_ctr (unsigned short,int) ;
 int w_dtr (unsigned short,int) ;

__attribute__((used)) static int ppa_select(ppa_struct *dev, int target)
{
 int k;
 unsigned short ppb = dev->base;





 k = PPA_SELECT_TMO;
 do {
  k--;
  udelay(1);
 } while ((r_str(ppb) & 0x40) && (k));
 if (!k)
  return 0;

 w_dtr(ppb, (1 << target));
 w_ctr(ppb, 0xe);
 w_ctr(ppb, 0xc);
 w_dtr(ppb, 0x80);
 w_ctr(ppb, 0x8);

 k = PPA_SELECT_TMO;
 do {
  k--;
  udelay(1);
 }
 while (!(r_str(ppb) & 0x40) && (k));
 if (!k)
  return 0;

 return 1;
}
