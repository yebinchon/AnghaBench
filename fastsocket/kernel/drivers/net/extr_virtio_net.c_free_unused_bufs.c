
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtnet_info {scalar_t__ num; scalar_t__ big_packets; scalar_t__ mergeable_rx_bufs; int rvq; int svq; } ;


 int BUG_ON (int) ;
 int dev_kfree_skb (void*) ;
 int give_pages (struct virtnet_info*,void*) ;
 void* virtqueue_detach_unused_buf (int ) ;

__attribute__((used)) static void free_unused_bufs(struct virtnet_info *vi)
{
 void *buf;
 while (1) {
  buf = virtqueue_detach_unused_buf(vi->svq);
  if (!buf)
   break;
  dev_kfree_skb(buf);
 }
 while (1) {
  buf = virtqueue_detach_unused_buf(vi->rvq);
  if (!buf)
   break;
  if (vi->mergeable_rx_bufs || vi->big_packets)
   give_pages(vi, buf);
  else
   dev_kfree_skb(buf);
  --vi->num;
 }
 BUG_ON(vi->num != 0);
}
