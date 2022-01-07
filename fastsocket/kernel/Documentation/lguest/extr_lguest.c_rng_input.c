
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int num; } ;
struct virtqueue {TYPE_2__ vring; TYPE_1__* dev; } ;
struct rng_info {int rfd; } ;
struct iovec {int dummy; } ;
struct TYPE_3__ {struct rng_info* priv; } ;


 int add_used (struct virtqueue*,unsigned int,unsigned int) ;
 int err (int,char*,int) ;
 int errx (int,char*) ;
 int iov_consume (struct iovec*,unsigned int,int) ;
 int iov_empty (struct iovec*,unsigned int) ;
 int readv (int ,struct iovec*,unsigned int) ;
 unsigned int wait_for_vq_desc (struct virtqueue*,struct iovec*,unsigned int*,unsigned int*) ;

__attribute__((used)) static void rng_input(struct virtqueue *vq)
{
 int len;
 unsigned int head, in_num, out_num, totlen = 0;
 struct rng_info *rng_info = vq->dev->priv;
 struct iovec iov[vq->vring.num];


 head = wait_for_vq_desc(vq, iov, &out_num, &in_num);
 if (out_num)
  errx(1, "Output buffers in rng?");





 while (!iov_empty(iov, in_num)) {
  len = readv(rng_info->rfd, iov, in_num);
  if (len <= 0)
   err(1, "Read from /dev/random gave %i", len);
  iov_consume(iov, in_num, len);
  totlen += len;
 }


 add_used(vq, head, totlen);
}
