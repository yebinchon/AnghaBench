
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tty_struct {int dummy; } ;
struct etrax_recv_buffer {int length; unsigned char error; unsigned char* buffer; } ;
struct TYPE_4__ {int rx; } ;
struct TYPE_3__ {struct tty_struct* tty; } ;
struct e100_serial {TYPE_2__ icount; TYPE_1__ port; scalar_t__ uses_dma_in; } ;


 struct etrax_recv_buffer* alloc_recv_buffer (int) ;
 int append_recv_buffer (struct e100_serial*,struct etrax_recv_buffer*) ;
 int tty_insert_flip_char (struct tty_struct*,unsigned char,unsigned char) ;

__attribute__((used)) static int
add_char_and_flag(struct e100_serial *info, unsigned char data, unsigned char flag)
{
 struct etrax_recv_buffer *buffer;
 if (info->uses_dma_in) {
  if (!(buffer = alloc_recv_buffer(4)))
   return 0;

  buffer->length = 1;
  buffer->error = flag;
  buffer->buffer[0] = data;

  append_recv_buffer(info, buffer);

  info->icount.rx++;
 } else {
  struct tty_struct *tty = info->port.tty;
  tty_insert_flip_char(tty, data, flag);
  info->icount.rx++;
 }

 return 1;
}
