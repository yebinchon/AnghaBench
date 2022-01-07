
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtnet_info {int rvq; int dev; } ;
struct skb_vnet_hdr {int hdr; } ;
struct sk_buff {int len; } ;
struct scatterlist {int dummy; } ;
typedef int gfp_t ;


 int ENOMEM ;
 scalar_t__ MAX_PACKET_LEN ;
 scalar_t__ NET_IP_ALIGN ;
 int dev_kfree_skb (struct sk_buff*) ;
 struct sk_buff* netdev_alloc_skb (int ,scalar_t__) ;
 int sg_set_buf (struct scatterlist*,int *,int) ;
 int skb_put (struct sk_buff*,scalar_t__) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 int skb_to_sgvec (struct sk_buff*,struct scatterlist*,int ,int ) ;
 struct skb_vnet_hdr* skb_vnet_hdr (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;
 int virtqueue_add_buf (int ,struct scatterlist*,int ,int,struct sk_buff*) ;

__attribute__((used)) static int add_recvbuf_small(struct virtnet_info *vi, gfp_t gfp)
{
 struct sk_buff *skb;
 struct skb_vnet_hdr *hdr;
 struct scatterlist sg[2];
 int err;

 skb = netdev_alloc_skb(vi->dev, MAX_PACKET_LEN + NET_IP_ALIGN);
 if (unlikely(!skb))
  return -ENOMEM;

 skb_reserve(skb, NET_IP_ALIGN);
 skb_put(skb, MAX_PACKET_LEN);

 hdr = skb_vnet_hdr(skb);
 sg_set_buf(sg, &hdr->hdr, sizeof hdr->hdr);

 skb_to_sgvec(skb, sg + 1, 0, skb->len);

 err = virtqueue_add_buf(vi->rvq, sg, 0, 2, skb);
 if (err < 0)
  dev_kfree_skb(skb);

 return err;
}
