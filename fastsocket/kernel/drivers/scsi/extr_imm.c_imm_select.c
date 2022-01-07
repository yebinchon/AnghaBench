
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned short base; } ;
typedef TYPE_1__ imm_struct ;


 int IMM_SELECT_TMO ;
 int r_str (unsigned short) ;
 int udelay (int) ;
 int w_ctr (unsigned short,int) ;
 int w_dtr (unsigned short,int) ;

__attribute__((used)) static int imm_select(imm_struct *dev, int target)
{
 int k;
 unsigned short ppb = dev->base;





 w_ctr(ppb, 0xc);

 k = IMM_SELECT_TMO;
 do {
  k--;
 } while ((r_str(ppb) & 0x08) && (k));

 if (!k)
  return 0;




 w_ctr(ppb, 0x4);
 w_dtr(ppb, 0x80 | (1 << target));
 udelay(1);




 w_ctr(ppb, 0xc);
 w_ctr(ppb, 0xd);





 k = IMM_SELECT_TMO;
 do {
  k--;
 }
 while (!(r_str(ppb) & 0x08) && (k));




 w_ctr(ppb, 0xc);
 return (k) ? 1 : 0;
}
