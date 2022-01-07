
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct terratec {unsigned long curfreq; int lock; int io; } ;
typedef int buffer ;


 int CLK_ON ;
 int DATA ;
 int WRT_EN ;
 int memset (unsigned char*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int outb (int,int ) ;

__attribute__((used)) static int tt_setfreq(struct terratec *tt, unsigned long freq1)
{
 int freq;
 int i;
 int p;
 int temp;
 long rest;
 unsigned char buffer[25];

 mutex_lock(&tt->lock);

 tt->curfreq = freq1;

 freq = freq1 / 160;
 memset(buffer, 0, sizeof(buffer));

 rest = freq * 10 + 10700;

 i = 13;
 p = 10;
 temp = 102400;
 while (rest != 0) {
  if (rest % temp == rest)
   buffer[i] = 0;
  else {
   buffer[i] = 1;
   rest = rest - temp;
  }
  i--;
  p--;
  temp = temp / 2;
 }

 for (i = 24; i > -1; i--) {
  if (buffer[i] == 1) {
   outb(WRT_EN | DATA, tt->io);
   outb(WRT_EN | DATA | CLK_ON, tt->io);
   outb(WRT_EN | DATA, tt->io);
  } else {
   outb(WRT_EN | 0x00, tt->io);
   outb(WRT_EN | 0x00 | CLK_ON, tt->io);
  }
 }
 outb(0x00, tt->io);

 mutex_unlock(&tt->lock);

 return 0;
}
