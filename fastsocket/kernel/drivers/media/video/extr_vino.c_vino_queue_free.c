
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vino_framebuffer_queue {scalar_t__ magic; scalar_t__ type; int queue_mutex; int length; } ;


 scalar_t__ VINO_MEMORY_MMAP ;
 scalar_t__ VINO_QUEUE_MAGIC ;
 int dprintk (char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vino_queue_free_with_count (struct vino_framebuffer_queue*,int ) ;

__attribute__((used)) static void vino_queue_free(struct vino_framebuffer_queue *q)
{
 dprintk("vino_queue_free():\n");

 if (q->magic != VINO_QUEUE_MAGIC)
  return;
 if (q->type != VINO_MEMORY_MMAP)
  return;

 mutex_lock(&q->queue_mutex);

 vino_queue_free_with_count(q, q->length);

 mutex_unlock(&q->queue_mutex);
}
