
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num; } ;
struct virtqueue {scalar_t__ pending_used; TYPE_2__* dev; TYPE_1__ vring; } ;
struct net_info {int tunfd; } ;
struct iovec {int dummy; } ;
struct TYPE_4__ {struct net_info* priv; } ;


 int add_used (struct virtqueue*,unsigned int,int) ;
 int err (int,char*) ;
 int errx (int,char*) ;
 int readv (int ,struct iovec*,unsigned int) ;
 int trigger_irq (struct virtqueue*) ;
 unsigned int wait_for_vq_desc (struct virtqueue*,struct iovec*,unsigned int*,unsigned int*) ;
 scalar_t__ will_block (int ) ;

__attribute__((used)) static void net_input(struct virtqueue *vq)
{
 int len;
 unsigned int head, out, in;
 struct iovec iov[vq->vring.num];
 struct net_info *net_info = vq->dev->priv;





 head = wait_for_vq_desc(vq, iov, &out, &in);
 if (out)
  errx(1, "Output buffers in net input queue?");





 if (vq->pending_used && will_block(net_info->tunfd))
  trigger_irq(vq);





 len = readv(net_info->tunfd, iov, in);
 if (len <= 0)
  err(1, "Failed to read from tun.");





 add_used(vq, head, len);
}
