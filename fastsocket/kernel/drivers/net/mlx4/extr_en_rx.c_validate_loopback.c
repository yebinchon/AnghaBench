
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {unsigned char* data; } ;
struct mlx4_en_priv {int loopback_ok; } ;


 int ETH_HLEN ;
 int MLX4_LOOPBACK_TEST_PAYLOAD ;
 int dev_kfree_skb_any (struct sk_buff*) ;

__attribute__((used)) static void validate_loopback(struct mlx4_en_priv *priv, struct sk_buff *skb)
{
 int i;
 int offset = ETH_HLEN;

 for (i = 0; i < MLX4_LOOPBACK_TEST_PAYLOAD; i++, offset++) {
  if (*(skb->data + offset) != (unsigned char) (i & 0xff))
   goto out_loopback;
 }

 priv->loopback_ok = 1;

out_loopback:
 dev_kfree_skb_any(skb);
}
