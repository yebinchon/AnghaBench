
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7134_dev {int dummy; } ;
struct cliplist {int enable; int disable; int position; } ;
typedef int __u8 ;


 int dprintk (char*,char*,int,int) ;
 int saa_writeb (int,int) ;

__attribute__((used)) static void set_cliplist(struct saa7134_dev *dev, int reg,
   struct cliplist *cl, int entries, char *name)
{
 __u8 winbits = 0;
 int i;

 for (i = 0; i < entries; i++) {
  winbits |= cl[i].enable;
  winbits &= ~cl[i].disable;
  if (i < 15 && cl[i].position == cl[i+1].position)
   continue;
  saa_writeb(reg + 0, winbits);
  saa_writeb(reg + 2, cl[i].position & 0xff);
  saa_writeb(reg + 3, cl[i].position >> 8);
  dprintk("clip: %s winbits=%02x pos=%d\n",
   name,winbits,cl[i].position);
  reg += 8;
 }
 for (; reg < 0x400; reg += 8) {
  saa_writeb(reg+ 0, 0);
  saa_writeb(reg + 1, 0);
  saa_writeb(reg + 2, 0);
  saa_writeb(reg + 3, 0);
 }
}
