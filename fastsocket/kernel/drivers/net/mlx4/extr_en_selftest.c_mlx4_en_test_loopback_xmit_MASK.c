#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct mlx4_en_priv {TYPE_1__* dev; } ;
struct ethhdr {int /*<<< orphan*/  h_proto; int /*<<< orphan*/  h_source; int /*<<< orphan*/  h_dest; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 scalar_t__ ETH_HLEN ; 
 int /*<<< orphan*/  ETH_P_ARP ; 
 unsigned int MLX4_LOOPBACK_TEST_PAYLOAD ; 
 scalar_t__ NET_IP_ALIGN ; 
 int /*<<< orphan*/  FUNC0 (struct mlx4_en_priv*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sk_buff*,TYPE_1__*) ; 
 struct sk_buff* FUNC5 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC6 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct mlx4_en_priv *priv)
{
	struct sk_buff *skb;
	struct ethhdr *ethh;
	unsigned char *packet;
	unsigned int packet_size = MLX4_LOOPBACK_TEST_PAYLOAD;
	unsigned int i;
	int err;


	/* build the pkt before xmit */
	skb = FUNC5(priv->dev, MLX4_LOOPBACK_TEST_PAYLOAD + ETH_HLEN + NET_IP_ALIGN);
	if (!skb) {
		FUNC0(priv, "-LOOPBACK_TEST_XMIT- failed to create skb for xmit\n");
		return -ENOMEM;
	}
	FUNC7(skb, NET_IP_ALIGN);

	ethh = (struct ethhdr *)FUNC6(skb, sizeof(struct ethhdr));
	packet	= (unsigned char *)FUNC6(skb, packet_size);
	FUNC2(ethh->h_dest, priv->dev->dev_addr, ETH_ALEN);
	FUNC3(ethh->h_source, 0, ETH_ALEN);
	ethh->h_proto = FUNC1(ETH_P_ARP);
	FUNC8(skb, 0);
	for (i = 0; i < packet_size; ++i)	/* fill our packet */
		packet[i] = (unsigned char)(i & 0xff);

	/* xmit the pkt */
	err = FUNC4(skb, priv->dev);
	return err;
}