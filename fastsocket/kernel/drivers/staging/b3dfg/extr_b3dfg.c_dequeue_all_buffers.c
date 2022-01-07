
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b3dfg_dev {struct b3dfg_buffer* buffers; } ;
struct b3dfg_buffer {int list; int state; } ;


 int B3DFG_BUFFER_POLLED ;
 int b3dfg_nbuf ;
 int list_del_init (int *) ;

__attribute__((used)) static void dequeue_all_buffers(struct b3dfg_dev *fgdev)
{
 int i;
 for (i = 0; i < b3dfg_nbuf; i++) {
  struct b3dfg_buffer *buf = &fgdev->buffers[i];
  buf->state = B3DFG_BUFFER_POLLED;
  list_del_init(&buf->list);
 }
}
