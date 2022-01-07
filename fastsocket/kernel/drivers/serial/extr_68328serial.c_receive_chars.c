
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tty_struct {int dummy; } ;
struct TYPE_5__ {struct tty_struct* tty; } ;
struct m68k_serial {size_t line; scalar_t__ is_cons; TYPE_1__ port; } ;
struct TYPE_6__ {unsigned short w; } ;
struct TYPE_7__ {TYPE_2__ urx; } ;
typedef TYPE_3__ m68328_uart ;


 unsigned char GET_FIELD (unsigned short,int ) ;
 unsigned char TTY_FRAME ;
 unsigned char TTY_NORMAL ;
 unsigned char TTY_OVERRUN ;
 unsigned char TTY_PARITY ;
 unsigned short URX_BREAK ;
 unsigned short URX_DATA_READY ;
 unsigned short URX_FRAME_ERROR ;
 unsigned short URX_OVRUN ;
 unsigned short URX_PARITY_ERROR ;
 int URX_RXDATA ;
 int emergency_restart () ;
 int keypress_wait ;
 int show_buffers () ;
 int show_free_areas () ;
 int show_state () ;
 int status_handle (struct m68k_serial*,unsigned short) ;
 int tty_insert_flip_char (struct tty_struct*,unsigned char,unsigned char) ;
 int tty_schedule_flip (struct tty_struct*) ;
 TYPE_3__* uart_addr ;
 int wake_up (int *) ;

__attribute__((used)) static void receive_chars(struct m68k_serial *info, unsigned short rx)
{
 struct tty_struct *tty = info->port.tty;
 m68328_uart *uart = &uart_addr[info->line];
 unsigned char ch, flag;





 do {

  ch = GET_FIELD(rx, URX_RXDATA);

  if(info->is_cons) {
   if(URX_BREAK & rx) {
    status_handle(info, rx);
    return;
   }




  }

  if(!tty)
   goto clear_and_exit;

  flag = TTY_NORMAL;

  if(rx & URX_PARITY_ERROR) {
   flag = TTY_PARITY;
   status_handle(info, rx);
  } else if(rx & URX_OVRUN) {
   flag = TTY_OVERRUN;
   status_handle(info, rx);
  } else if(rx & URX_FRAME_ERROR) {
   flag = TTY_FRAME;
   status_handle(info, rx);
  }
  tty_insert_flip_char(tty, ch, flag);

 } while((rx = uart->urx.w) & URX_DATA_READY);


 tty_schedule_flip(tty);

clear_and_exit:
 return;
}
