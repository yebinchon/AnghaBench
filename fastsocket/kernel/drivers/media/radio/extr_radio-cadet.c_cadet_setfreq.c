
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cadet {int curtuner; int tunestat; scalar_t__ sigstrength; int lock; scalar_t__ io; } ;


 int cadet_gettune (struct cadet*) ;
 int cadet_settune (struct cadet*,unsigned int) ;
 int inb (scalar_t__) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int outb (int,scalar_t__) ;
 scalar_t__** sigtable ;

__attribute__((used)) static void cadet_setfreq(struct cadet *dev, unsigned freq)
{
 unsigned fifo;
 int i, j, test;
 int curvol;




 fifo = 0;
 if (dev->curtuner == 0) {
  test = 102400;
  freq = (freq * 1000) / 16;
  freq += 10700;
  for (i = 0; i < 14; i++) {
   fifo = fifo << 1;
   if (freq >= test) {
    fifo |= 0x01;
    freq -= test;
   }
   test = test >> 1;
  }
 }
 if (dev->curtuner == 1) {
  fifo = (freq / 16) + 2010;
  fifo |= 0x100000;
 }





 mutex_lock(&dev->lock);
 outb(7, dev->io);
 curvol = inb(dev->io + 1);
 mutex_unlock(&dev->lock);




 for (j = 3; j > -1; j--) {
  cadet_settune(dev, fifo | (j << 16));

  mutex_lock(&dev->lock);
  outb(7, dev->io);
  outb(curvol, dev->io + 1);
  mutex_unlock(&dev->lock);

  msleep(100);

  cadet_gettune(dev);
  if ((dev->tunestat & 0x40) == 0) {
   dev->sigstrength = sigtable[dev->curtuner][j];
   return;
  }
 }
 dev->sigstrength = 0;
}
