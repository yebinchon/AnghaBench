
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct terratec {int lock; scalar_t__ io; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static void tt_write_vol(struct terratec *tt, int volume)
{
 int i;

 volume = volume + (volume * 32);
 mutex_lock(&tt->lock);
 for (i = 0; i < 8; i++) {
  if (volume & (0x80 >> i))
   outb(0x80, tt->io + 1);
  else
   outb(0x00, tt->io + 1);
 }
 mutex_unlock(&tt->lock);
}
