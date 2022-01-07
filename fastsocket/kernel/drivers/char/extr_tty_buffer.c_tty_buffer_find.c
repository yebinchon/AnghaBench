
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t memory_used; struct tty_buffer* free; } ;
struct tty_struct {TYPE_1__ buf; } ;
struct tty_buffer {size_t size; struct tty_buffer* next; scalar_t__ read; scalar_t__ commit; scalar_t__ used; } ;


 struct tty_buffer* tty_buffer_alloc (struct tty_struct*,size_t) ;

__attribute__((used)) static struct tty_buffer *tty_buffer_find(struct tty_struct *tty, size_t size)
{
 struct tty_buffer **tbh = &tty->buf.free;
 while ((*tbh) != ((void*)0)) {
  struct tty_buffer *t = *tbh;
  if (t->size >= size) {
   *tbh = t->next;
   t->next = ((void*)0);
   t->used = 0;
   t->commit = 0;
   t->read = 0;
   tty->buf.memory_used += t->size;
   return t;
  }
  tbh = &((*tbh)->next);
 }

 size = (size + 0xFF) & ~0xFF;
 return tty_buffer_alloc(tty, size);


}
