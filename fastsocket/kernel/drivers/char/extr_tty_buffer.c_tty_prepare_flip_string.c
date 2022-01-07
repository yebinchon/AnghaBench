
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; struct tty_buffer* tail; } ;
struct tty_struct {TYPE_1__ buf; } ;
struct tty_buffer {unsigned char* char_buf_ptr; int used; int flag_buf_ptr; } ;


 int TTY_NORMAL ;
 int __tty_buffer_request_room (struct tty_struct*,size_t) ;
 scalar_t__ likely (int) ;
 int memset (int,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int tty_prepare_flip_string(struct tty_struct *tty, unsigned char **chars,
        size_t size)
{
 int space;
 unsigned long flags;
 struct tty_buffer *tb;

 spin_lock_irqsave(&tty->buf.lock, flags);
 space = __tty_buffer_request_room(tty, size);

 tb = tty->buf.tail;
 if (likely(space)) {
  *chars = tb->char_buf_ptr + tb->used;
  memset(tb->flag_buf_ptr + tb->used, TTY_NORMAL, space);
  tb->used += space;
 }
 spin_unlock_irqrestore(&tty->buf.lock, flags);
 return space;
}
