
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videobuf_queue {int dummy; } ;
struct videobuf_buffer {int state; } ;


 int VIDEOBUF_NEEDS_INIT ;
 int videobuf_vmalloc_free (struct videobuf_buffer*) ;

__attribute__((used)) static void pd_buf_release(struct videobuf_queue *q, struct videobuf_buffer *vb)
{
 videobuf_vmalloc_free(vb);
 vb->state = VIDEOBUF_NEEDS_INIT;
}
