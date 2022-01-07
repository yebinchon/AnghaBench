
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct mlx4_en_priv {TYPE_1__* dev; } ;
struct ethhdr {int h_proto; int h_source; int h_dest; } ;
struct TYPE_3__ {int dev_addr; } ;


 int ENOMEM ;
 int ETH_ALEN ;
 scalar_t__ ETH_HLEN ;
 int ETH_P_ARP ;
 unsigned int MLX4_LOOPBACK_TEST_PAYLOAD ;
 scalar_t__ NET_IP_ALIGN ;
 int en_err (struct mlx4_en_priv*,char*) ;
 int htons (int ) ;
 int memcpy (int ,int ,int ) ;
 int memset (int ,int ,int ) ;
 int mlx4_en_xmit (struct sk_buff*,TYPE_1__*) ;
 struct sk_buff* netdev_alloc_skb (TYPE_1__*,scalar_t__) ;
 scalar_t__ skb_put (struct sk_buff*,unsigned int) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 int skb_set_mac_header (struct sk_buff*,int ) ;

__attribute__((used)) static int mlx4_en_test_loopback_xmit(struct mlx4_en_priv *priv)
{
 struct sk_buff *skb;
 struct ethhdr *ethh;
 unsigned char *packet;
 unsigned int packet_size = MLX4_LOOPBACK_TEST_PAYLOAD;
 unsigned int i;
 int err;



 skb = netdev_alloc_skb(priv->dev, MLX4_LOOPBACK_TEST_PAYLOAD + ETH_HLEN + NET_IP_ALIGN);
 if (!skb) {
  en_err(priv, "-LOOPBACK_TEST_XMIT- failed to create skb for xmit\n");
  return -ENOMEM;
 }
 skb_reserve(skb, NET_IP_ALIGN);

 ethh = (struct ethhdr *)skb_put(skb, sizeof(struct ethhdr));
 packet = (unsigned char *)skb_put(skb, packet_size);
 memcpy(ethh->h_dest, priv->dev->dev_addr, ETH_ALEN);
 memset(ethh->h_source, 0, ETH_ALEN);
 ethh->h_proto = htons(ETH_P_ARP);
 skb_set_mac_header(skb, 0);
 for (i = 0; i < packet_size; ++i)
  packet[i] = (unsigned char)(i & 0xff);


 err = mlx4_en_xmit(skb, priv->dev);
 return err;
}
