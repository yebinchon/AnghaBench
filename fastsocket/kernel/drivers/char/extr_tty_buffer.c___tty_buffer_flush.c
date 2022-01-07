
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct tty_buffer* head; struct tty_buffer* tail; } ;
struct tty_struct {TYPE_1__ buf; } ;
struct tty_buffer {int commit; int read; struct tty_buffer* next; } ;


 int WARN_ON (int) ;
 int tty_buffer_free (struct tty_struct*,struct tty_buffer*) ;

__attribute__((used)) static void __tty_buffer_flush(struct tty_struct *tty)
{
 struct tty_buffer *thead;

 if (tty->buf.head == ((void*)0))
  return;
 while ((thead = tty->buf.head->next) != ((void*)0)) {
  tty_buffer_free(tty, tty->buf.head);
  tty->buf.head = thead;
 }
 WARN_ON(tty->buf.head != tty->buf.tail);
 tty->buf.head->read = tty->buf.head->commit;
}
