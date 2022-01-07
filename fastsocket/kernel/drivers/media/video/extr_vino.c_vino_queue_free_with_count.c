
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vino_framebuffer_queue {scalar_t__ magic; int type; int * buffer; int out; int in; scalar_t__ length; } ;
struct vino_framebuffer_fifo {int dummy; } ;


 int VINO_MEMORY_NONE ;
 int dprintk (char*,unsigned int) ;
 int kfree (int ) ;
 int memset (int *,int ,int) ;
 int vino_free_buffer (int ) ;

__attribute__((used)) static void vino_queue_free_with_count(struct vino_framebuffer_queue *q,
           unsigned int length)
{
 unsigned int i;

 q->length = 0;
 memset(&q->in, 0, sizeof(struct vino_framebuffer_fifo));
 memset(&q->out, 0, sizeof(struct vino_framebuffer_fifo));
 for (i = 0; i < length; i++) {
  dprintk("vino_queue_free_with_count(): freeing buffer %d\n",
   i);
  vino_free_buffer(q->buffer[i]);
  kfree(q->buffer[i]);
 }

 q->type = VINO_MEMORY_NONE;
 q->magic = 0;
}
