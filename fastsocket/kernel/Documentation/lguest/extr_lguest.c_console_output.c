
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num; } ;
struct virtqueue {TYPE_1__ vring; } ;
struct iovec {int dummy; } ;


 int STDOUT_FILENO ;
 int add_used (struct virtqueue*,unsigned int,int ) ;
 int err (int,char*,int) ;
 int errx (int,char*) ;
 int iov_consume (struct iovec*,unsigned int,int) ;
 int iov_empty (struct iovec*,unsigned int) ;
 unsigned int wait_for_vq_desc (struct virtqueue*,struct iovec*,unsigned int*,unsigned int*) ;
 int writev (int ,struct iovec*,unsigned int) ;

__attribute__((used)) static void console_output(struct virtqueue *vq)
{
 unsigned int head, out, in;
 struct iovec iov[vq->vring.num];


 head = wait_for_vq_desc(vq, iov, &out, &in);
 if (in)
  errx(1, "Input buffers in console output queue?");


 while (!iov_empty(iov, out)) {
  int len = writev(STDOUT_FILENO, iov, out);
  if (len <= 0)
   err(1, "Write to stdout gave %i", len);
  iov_consume(iov, out, len);
 }





 add_used(vq, head, 0);
}
