
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t memory_used; } ;
struct tty_struct {TYPE_1__ buf; } ;
struct tty_buffer {size_t size; char* char_buf_ptr; unsigned char* flag_buf_ptr; scalar_t__ data; scalar_t__ read; scalar_t__ commit; int * next; scalar_t__ used; } ;


 int GFP_ATOMIC ;
 struct tty_buffer* kmalloc (int,int ) ;

__attribute__((used)) static struct tty_buffer *tty_buffer_alloc(struct tty_struct *tty, size_t size)
{
 struct tty_buffer *p;

 if (tty->buf.memory_used + size > 65536)
  return ((void*)0);
 p = kmalloc(sizeof(struct tty_buffer) + 2 * size, GFP_ATOMIC);
 if (p == ((void*)0))
  return ((void*)0);
 p->used = 0;
 p->size = size;
 p->next = ((void*)0);
 p->commit = 0;
 p->read = 0;
 p->char_buf_ptr = (char *)(p->data);
 p->flag_buf_ptr = (unsigned char *)p->char_buf_ptr + size;
 tty->buf.memory_used += size;
 return p;
}
