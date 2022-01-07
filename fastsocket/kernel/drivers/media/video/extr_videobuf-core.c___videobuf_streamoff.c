
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videobuf_queue {int streaming; } ;


 int EINVAL ;
 int videobuf_queue_cancel (struct videobuf_queue*) ;

__attribute__((used)) static int __videobuf_streamoff(struct videobuf_queue *q)
{
 if (!q->streaming)
  return -EINVAL;

 videobuf_queue_cancel(q);

 return 0;
}
