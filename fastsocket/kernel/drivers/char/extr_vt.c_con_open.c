
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vc_data {scalar_t__ vc_utf; int vc_cols; int vc_rows; struct tty_struct* vc_tty; } ;
struct TYPE_4__ {int ws_col; int ws_row; } ;
struct tty_struct {unsigned int index; TYPE_2__* termios; TYPE_1__ winsize; struct vc_data* driver_data; } ;
struct file {int dummy; } ;
struct TYPE_6__ {struct vc_data* d; } ;
struct TYPE_5__ {int c_iflag; } ;


 int ERESTARTSYS ;
 int IUTF8 ;
 int acquire_console_sem () ;
 int release_console_sem () ;
 int vc_allocate (unsigned int) ;
 TYPE_3__* vc_cons ;

__attribute__((used)) static int con_open(struct tty_struct *tty, struct file *filp)
{
 unsigned int currcons = tty->index;
 int ret = 0;

 acquire_console_sem();
 if (tty->driver_data == ((void*)0)) {
  ret = vc_allocate(currcons);
  if (ret == 0) {
   struct vc_data *vc = vc_cons[currcons].d;


   if (vc->vc_tty) {
    release_console_sem();
    return -ERESTARTSYS;
   }
   tty->driver_data = vc;
   vc->vc_tty = tty;

   if (!tty->winsize.ws_row && !tty->winsize.ws_col) {
    tty->winsize.ws_row = vc_cons[currcons].d->vc_rows;
    tty->winsize.ws_col = vc_cons[currcons].d->vc_cols;
   }
   if (vc->vc_utf)
    tty->termios->c_iflag |= IUTF8;
   else
    tty->termios->c_iflag &= ~IUTF8;
   release_console_sem();
   return ret;
  }
 }
 release_console_sem();
 return ret;
}
