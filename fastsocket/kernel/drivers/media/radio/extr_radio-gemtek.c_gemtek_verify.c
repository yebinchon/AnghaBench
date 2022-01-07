
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gemtek {int verified; int lock; } ;


 int GEMTEK_NS ;
 int SHORT_DELAY ;
 int inb_p (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int outb_p (int,int) ;
 int udelay (int ) ;

__attribute__((used)) static int gemtek_verify(struct gemtek *gt, int port)
{
 int i, q;

 if (gt->verified == port)
  return 1;

 mutex_lock(&gt->lock);

 q = inb_p(port);


 for (i = 0; i < 3; ++i) {
  outb_p(1 << i, port);
  udelay(SHORT_DELAY);

  if ((inb_p(port) & (~GEMTEK_NS)) != (0x17 | (1 << (i + 5)))) {
   mutex_unlock(&gt->lock);
   return 0;
  }
 }
 outb_p(q >> 5, port);
 udelay(SHORT_DELAY);

 mutex_unlock(&gt->lock);
 gt->verified = port;

 return 1;
}
