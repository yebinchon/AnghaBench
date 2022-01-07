
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uvc_video_queue {unsigned int count; int mem; TYPE_1__* buffer; } ;
struct TYPE_2__ {scalar_t__ vma_use_count; } ;


 int EBUSY ;
 int vfree (int ) ;

__attribute__((used)) static int __uvc_free_buffers(struct uvc_video_queue *queue)
{
 unsigned int i;

 for (i = 0; i < queue->count; ++i) {
  if (queue->buffer[i].vma_use_count != 0)
   return -EBUSY;
 }

 if (queue->count) {
  vfree(queue->mem);
  queue->count = 0;
 }

 return 0;
}
