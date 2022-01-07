
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etrax_recv_buffer {int error; scalar_t__ length; int * next; } ;


 int GFP_ATOMIC ;
 int TTY_NORMAL ;
 struct etrax_recv_buffer* kmalloc (int,int ) ;

__attribute__((used)) static struct etrax_recv_buffer *
alloc_recv_buffer(unsigned int size)
{
 struct etrax_recv_buffer *buffer;

 if (!(buffer = kmalloc(sizeof *buffer + size, GFP_ATOMIC)))
  return ((void*)0);

 buffer->next = ((void*)0);
 buffer->length = 0;
 buffer->error = TTY_NORMAL;

 return buffer;
}
