
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int num; } ;
struct virtqueue {TYPE_2__ vring; TYPE_1__* dev; } ;
struct net_info {int tunfd; } ;
struct iovec {int dummy; } ;
struct TYPE_3__ {struct net_info* priv; } ;


 int add_used (struct virtqueue*,unsigned int,int ) ;
 int errx (int,char*) ;
 unsigned int wait_for_vq_desc (struct virtqueue*,struct iovec*,unsigned int*,unsigned int*) ;
 scalar_t__ writev (int ,struct iovec*,unsigned int) ;

__attribute__((used)) static void net_output(struct virtqueue *vq)
{
 struct net_info *net_info = vq->dev->priv;
 unsigned int head, out, in;
 struct iovec iov[vq->vring.num];


 head = wait_for_vq_desc(vq, iov, &out, &in);
 if (in)
  errx(1, "Input buffers in net output queue?");




 if (writev(net_info->tunfd, iov, out) < 0)
  errx(1, "Write to tun failed?");





 add_used(vq, head, 0);
}
