
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videobuf_queue {int dummy; } ;


 int __videobuf_streamoff (struct videobuf_queue*) ;
 int videobuf_queue_lock (struct videobuf_queue*) ;
 int videobuf_queue_unlock (struct videobuf_queue*) ;

int videobuf_streamoff(struct videobuf_queue *q)
{
 int retval;

 videobuf_queue_lock(q);
 retval = __videobuf_streamoff(q);
 videobuf_queue_unlock(q);

 return retval;
}
