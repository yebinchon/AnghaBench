
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct slip* disc_data; } ;
struct slip {scalar_t__ magic; int mode; int rx_errors; int flags; int dev; } ;


 int SLF_ERROR ;
 scalar_t__ SLIP_MAGIC ;
 int SL_MODE_SLIP6 ;
 int netif_running (int ) ;
 int slip_unesc (struct slip*,int ) ;
 int slip_unesc6 (struct slip*,int ) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static void slip_receive_buf(struct tty_struct *tty, const unsigned char *cp,
       char *fp, int count)
{
 struct slip *sl = tty->disc_data;

 if (!sl || sl->magic != SLIP_MAGIC || !netif_running(sl->dev))
  return;


 while (count--) {
  if (fp && *fp++) {
   if (!test_and_set_bit(SLF_ERROR, &sl->flags))
    sl->rx_errors++;
   cp++;
   continue;
  }





   slip_unesc(sl, *cp++);
 }
}
