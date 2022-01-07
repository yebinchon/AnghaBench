
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;


 int out_umc (int,int) ;
 int outb_p (int,int) ;
 int printk (char*,size_t,size_t,size_t,size_t) ;
 int** speedtab ;

__attribute__((used)) static void umc_set_speeds(u8 speeds[])
{
 int i, tmp;

 outb_p(0x5A, 0x108);

 out_umc(0xd7, (speedtab[0][speeds[2]] | (speedtab[0][speeds[3]]<<4)));
 out_umc(0xd6, (speedtab[0][speeds[0]] | (speedtab[0][speeds[1]]<<4)));
 tmp = 0;
 for (i = 3; i >= 0; i--)
  tmp = (tmp << 2) | speedtab[1][speeds[i]];
 out_umc(0xdc, tmp);
 for (i = 0; i < 4; i++) {
  out_umc(0xd0 + i, speedtab[2][speeds[i]]);
  out_umc(0xd8 + i, speedtab[2][speeds[i]]);
 }
 outb_p(0xa5, 0x108);

 printk("umc8672: drive speeds [0 to 11]: %d %d %d %d\n",
  speeds[0], speeds[1], speeds[2], speeds[3]);
}
