
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int dummy; } ;
struct etrax_recv_buffer {unsigned int length; int error; scalar_t__ buffer; struct etrax_recv_buffer* next; } ;
struct TYPE_2__ {struct tty_struct* tty; } ;
struct e100_serial {unsigned int recv_cnt; int * last_recv_buffer; struct etrax_recv_buffer* first_recv_buffer; TYPE_1__ port; } ;


 int TTY_NORMAL ;
 int kfree (struct etrax_recv_buffer*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int memmove (scalar_t__,scalar_t__,unsigned int) ;
 int tty_flip_buffer_push (struct tty_struct*) ;
 int tty_insert_flip_string (struct tty_struct*,scalar_t__,unsigned int) ;

__attribute__((used)) static void flush_to_flip_buffer(struct e100_serial *info)
{
 struct tty_struct *tty;
 struct etrax_recv_buffer *buffer;
 unsigned long flags;

 local_irq_save(flags);
 tty = info->port.tty;

 if (!tty) {
  local_irq_restore(flags);
  return;
 }

 while ((buffer = info->first_recv_buffer) != ((void*)0)) {
  unsigned int count = buffer->length;

  tty_insert_flip_string(tty, buffer->buffer, count);
  info->recv_cnt -= count;

  if (count == buffer->length) {
   info->first_recv_buffer = buffer->next;
   kfree(buffer);
  } else {
   buffer->length -= count;
   memmove(buffer->buffer, buffer->buffer + count, buffer->length);
   buffer->error = TTY_NORMAL;
  }
 }

 if (!info->first_recv_buffer)
  info->last_recv_buffer = ((void*)0);

 local_irq_restore(flags);


 tty_flip_buffer_push(tty);
}
