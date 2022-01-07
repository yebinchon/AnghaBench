
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ memory_used; int * tail; struct tty_buffer* free; struct tty_buffer* head; } ;
struct tty_struct {TYPE_1__ buf; } ;
struct tty_buffer {struct tty_buffer* next; } ;


 int kfree (struct tty_buffer*) ;

void tty_buffer_free_all(struct tty_struct *tty)
{
 struct tty_buffer *thead;
 while ((thead = tty->buf.head) != ((void*)0)) {
  tty->buf.head = thead->next;
  kfree(thead);
 }
 while ((thead = tty->buf.free) != ((void*)0)) {
  tty->buf.free = thead->next;
  kfree(thead);
 }
 tty->buf.tail = ((void*)0);
 tty->buf.memory_used = 0;
}
