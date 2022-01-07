
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gemtek {int lock; int io; int lastfreq; scalar_t__ muted; } ;


 int SHORT_DELAY ;
 int gemtek_setfreq (struct gemtek*,int ) ;
 scalar_t__ hardmute ;
 int inb_p (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int outb_p (int,int ) ;
 int udelay (int ) ;

__attribute__((used)) static void gemtek_unmute(struct gemtek *gt)
{
 int i;

 gt->muted = 0;
 if (hardmute) {

  gemtek_setfreq(gt, gt->lastfreq);
  return;
 }
 mutex_lock(&gt->lock);

 i = inb_p(gt->io);
 outb_p(i >> 5, gt->io);
 udelay(SHORT_DELAY);

 mutex_unlock(&gt->lock);
}
