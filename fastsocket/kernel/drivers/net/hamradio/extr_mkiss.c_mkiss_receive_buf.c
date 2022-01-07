
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tty_struct {int dummy; } ;
struct mkiss {scalar_t__ mtu; TYPE_2__* dev; int flags; } ;
struct TYPE_3__ {int rx_errors; } ;
struct TYPE_4__ {scalar_t__ mtu; TYPE_1__ stats; } ;


 int AXF_ERROR ;
 int ax_changedmtu (struct mkiss*) ;
 int kiss_unesc (struct mkiss*,int ) ;
 struct mkiss* mkiss_get (struct tty_struct*) ;
 int mkiss_put (struct mkiss*) ;
 int test_and_set_bit (int ,int *) ;
 int tty_unthrottle (struct tty_struct*) ;

__attribute__((used)) static void mkiss_receive_buf(struct tty_struct *tty, const unsigned char *cp,
 char *fp, int count)
{
 struct mkiss *ax = mkiss_get(tty);

 if (!ax)
  return;





 if (ax->mtu != ax->dev->mtu + 73)
  ax_changedmtu(ax);


 while (count--) {
  if (fp != ((void*)0) && *fp++) {
   if (!test_and_set_bit(AXF_ERROR, &ax->flags))
    ax->dev->stats.rx_errors++;
   cp++;
   continue;
  }

  kiss_unesc(ax, *cp++);
 }

 mkiss_put(ax);
 tty_unthrottle(tty);
}
