
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtnet_info {scalar_t__ num; scalar_t__ max; int rvq; scalar_t__ big_packets; scalar_t__ mergeable_rx_bufs; } ;
typedef int gfp_t ;


 int ENOMEM ;
 int add_recvbuf_big (struct virtnet_info*,int ) ;
 int add_recvbuf_mergeable (struct virtnet_info*,int ) ;
 int add_recvbuf_small (struct virtnet_info*,int ) ;
 scalar_t__ unlikely (int) ;
 int virtqueue_kick (int ) ;

__attribute__((used)) static bool try_fill_recv(struct virtnet_info *vi, gfp_t gfp)
{
 int err;
 bool oom;

 do {
  if (vi->mergeable_rx_bufs)
   err = add_recvbuf_mergeable(vi, gfp);
  else if (vi->big_packets)
   err = add_recvbuf_big(vi, gfp);
  else
   err = add_recvbuf_small(vi, gfp);

  oom = err == -ENOMEM;
  if (err < 0)
   break;
  ++vi->num;
 } while (err > 0);
 if (unlikely(vi->num > vi->max))
  vi->max = vi->num;
 virtqueue_kick(vi->rvq);
 return !oom;
}
