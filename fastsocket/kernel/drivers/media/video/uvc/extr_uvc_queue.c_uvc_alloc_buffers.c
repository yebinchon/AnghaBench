
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct uvc_video_queue {unsigned int count; unsigned int buf_size; int mutex; void* mem; TYPE_3__* buffer; int type; } ;
struct TYPE_4__ {unsigned int offset; } ;
struct TYPE_5__ {unsigned int index; unsigned int length; scalar_t__ flags; int memory; int field; int type; TYPE_1__ m; } ;
struct TYPE_6__ {int wait; TYPE_2__ buf; } ;


 int ENOMEM ;
 unsigned int PAGE_ALIGN (unsigned int) ;
 unsigned int UVC_MAX_VIDEO_BUFFERS ;
 int V4L2_FIELD_NONE ;
 int V4L2_MEMORY_MMAP ;
 int __uvc_free_buffers (struct uvc_video_queue*) ;
 int init_waitqueue_head (int *) ;
 int memset (TYPE_3__*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 void* vmalloc_32 (unsigned int) ;

int uvc_alloc_buffers(struct uvc_video_queue *queue, unsigned int nbuffers,
  unsigned int buflength)
{
 unsigned int bufsize = PAGE_ALIGN(buflength);
 unsigned int i;
 void *mem = ((void*)0);
 int ret;

 if (nbuffers > UVC_MAX_VIDEO_BUFFERS)
  nbuffers = UVC_MAX_VIDEO_BUFFERS;

 mutex_lock(&queue->mutex);

 if ((ret = __uvc_free_buffers(queue)) < 0)
  goto done;


 if (nbuffers == 0)
  goto done;


 for (; nbuffers > 0; --nbuffers) {
  mem = vmalloc_32(nbuffers * bufsize);
  if (mem != ((void*)0))
   break;
 }

 if (mem == ((void*)0)) {
  ret = -ENOMEM;
  goto done;
 }

 for (i = 0; i < nbuffers; ++i) {
  memset(&queue->buffer[i], 0, sizeof queue->buffer[i]);
  queue->buffer[i].buf.index = i;
  queue->buffer[i].buf.m.offset = i * bufsize;
  queue->buffer[i].buf.length = buflength;
  queue->buffer[i].buf.type = queue->type;
  queue->buffer[i].buf.field = V4L2_FIELD_NONE;
  queue->buffer[i].buf.memory = V4L2_MEMORY_MMAP;
  queue->buffer[i].buf.flags = 0;
  init_waitqueue_head(&queue->buffer[i].wait);
 }

 queue->mem = mem;
 queue->count = nbuffers;
 queue->buf_size = bufsize;
 ret = nbuffers;

done:
 mutex_unlock(&queue->mutex);
 return ret;
}
