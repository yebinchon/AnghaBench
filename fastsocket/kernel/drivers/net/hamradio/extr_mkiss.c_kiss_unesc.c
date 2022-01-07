
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mkiss {int rcount; scalar_t__ buffsize; unsigned char* rbuff; int buflock; int flags; TYPE_2__* dev; } ;
struct TYPE_3__ {int rx_over_errors; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;


 int AXF_ERROR ;
 int AXF_ESCAPE ;
 int AXF_KEEPTEST ;




 int ax_bump (struct mkiss*) ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void kiss_unesc(struct mkiss *ax, unsigned char s)
{
 switch (s) {
 case 131:

  if (test_bit(AXF_KEEPTEST, &ax->flags))
   clear_bit(AXF_KEEPTEST, &ax->flags);

  if (!test_and_clear_bit(AXF_ERROR, &ax->flags) && (ax->rcount > 2))
   ax_bump(ax);

  clear_bit(AXF_ESCAPE, &ax->flags);
  ax->rcount = 0;
  return;

 case 130:
  set_bit(AXF_ESCAPE, &ax->flags);
  return;
 case 128:
  if (test_and_clear_bit(AXF_ESCAPE, &ax->flags))
   s = 130;
  break;
 case 129:
  if (test_and_clear_bit(AXF_ESCAPE, &ax->flags))
   s = 131;
  break;
 }

 spin_lock_bh(&ax->buflock);
 if (!test_bit(AXF_ERROR, &ax->flags)) {
  if (ax->rcount < ax->buffsize) {
   ax->rbuff[ax->rcount++] = s;
   spin_unlock_bh(&ax->buflock);
   return;
  }

  ax->dev->stats.rx_over_errors++;
  set_bit(AXF_ERROR, &ax->flags);
 }
 spin_unlock_bh(&ax->buflock);
}
