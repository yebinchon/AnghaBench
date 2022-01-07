
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int r_str (unsigned short) ;
 int udelay (int) ;
 int w_ctr (unsigned short,int) ;
 int w_dtr (unsigned short,int) ;

__attribute__((used)) static int imm_cpp(unsigned short ppb, unsigned char b)
{





 unsigned char s1, s2, s3;
 w_ctr(ppb, 0x0c);
 udelay(2);
 w_dtr(ppb, 0xaa);
 udelay(10);
 w_dtr(ppb, 0x55);
 udelay(10);
 w_dtr(ppb, 0x00);
 udelay(10);
 w_dtr(ppb, 0xff);
 udelay(10);
 s1 = r_str(ppb) & 0xb8;
 w_dtr(ppb, 0x87);
 udelay(10);
 s2 = r_str(ppb) & 0xb8;
 w_dtr(ppb, 0x78);
 udelay(10);
 s3 = r_str(ppb) & 0x38;
 w_dtr(ppb, b);
 udelay(2);
 w_ctr(ppb, 0x0c);
 udelay(10);
 w_ctr(ppb, 0x0d);
 udelay(2);
 w_ctr(ppb, 0x0c);
 udelay(10);
 w_dtr(ppb, 0xff);
 udelay(10);
 if ((s1 == 0xb8) && (s2 == 0x18) && (s3 == 0x30))
  return 1;
 if ((s1 == 0xb8) && (s2 == 0x18) && (s3 == 0x38))
  return 0;

 return -1;
}
