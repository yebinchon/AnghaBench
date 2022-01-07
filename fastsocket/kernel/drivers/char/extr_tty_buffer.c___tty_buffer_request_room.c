
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct tty_buffer* tail; struct tty_buffer* head; } ;
struct tty_struct {TYPE_1__ buf; } ;
struct tty_buffer {int size; int used; int commit; struct tty_buffer* next; } ;


 struct tty_buffer* tty_buffer_find (struct tty_struct*,size_t) ;

__attribute__((used)) static int __tty_buffer_request_room(struct tty_struct *tty, size_t size)
{
 struct tty_buffer *b, *n;
 int left;



 if ((b = tty->buf.tail) != ((void*)0))
  left = b->size - b->used;
 else
  left = 0;

 if (left < size) {

  if ((n = tty_buffer_find(tty, size)) != ((void*)0)) {
   if (b != ((void*)0)) {
    b->next = n;
    b->commit = b->used;
   } else
    tty->buf.head = n;
   tty->buf.tail = n;
  } else
   size = left;
 }

 return size;
}
