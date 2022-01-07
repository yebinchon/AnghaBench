
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int memory_used; struct tty_buffer* free; } ;
struct tty_struct {TYPE_1__ buf; } ;
struct tty_buffer {int size; struct tty_buffer* next; } ;


 int WARN_ON (int) ;
 int kfree (struct tty_buffer*) ;

__attribute__((used)) static void tty_buffer_free(struct tty_struct *tty, struct tty_buffer *b)
{

 tty->buf.memory_used -= b->size;
 WARN_ON(tty->buf.memory_used < 0);

 if (b->size >= 512)
  kfree(b);
 else {
  b->next = tty->buf.free;
  tty->buf.free = b;
 }
}
