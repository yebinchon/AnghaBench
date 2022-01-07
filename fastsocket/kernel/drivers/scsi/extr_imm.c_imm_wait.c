
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned short base; } ;
typedef TYPE_1__ imm_struct ;


 int DID_TIME_OUT ;
 int IMM_SPIN_TMO ;
 int imm_fail (TYPE_1__*,int ) ;
 int printk (char*) ;
 unsigned char r_str (unsigned short) ;
 int udelay (int) ;
 int w_ctr (unsigned short,int) ;

__attribute__((used)) static unsigned char imm_wait(imm_struct *dev)
{
 int k;
 unsigned short ppb = dev->base;
 unsigned char r;

 w_ctr(ppb, 0x0c);

 k = IMM_SPIN_TMO;
 do {
  r = r_str(ppb);
  k--;
  udelay(1);
 }
 while (!(r & 0x80) && (k));
 w_ctr(ppb, 0x04);
 if (k)
  return (r & 0xb8);


 imm_fail(dev, DID_TIME_OUT);
 printk("imm timeout in imm_wait\n");
 return 0;
}
