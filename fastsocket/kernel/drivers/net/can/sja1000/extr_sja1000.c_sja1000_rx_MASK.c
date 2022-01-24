#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint8_t ;
struct sk_buff {int /*<<< orphan*/  protocol; struct net_device* dev; } ;
struct sja1000_priv {int (* read_reg ) (struct sja1000_priv*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* write_reg ) (struct sja1000_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct net_device_stats {int rx_bytes; int /*<<< orphan*/  rx_packets; } ;
struct net_device {struct net_device_stats stats; } ;
struct can_frame {int can_id; int can_dlc; int* data; } ;
typedef  int canid_t ;

/* Variables and functions */
 int CAN_EFF_FLAG ; 
 int CAN_RTR_FLAG ; 
 int /*<<< orphan*/  CMD_RRB ; 
 int EFF_BUF ; 
 int /*<<< orphan*/  ETH_P_CAN ; 
 int FI_FF ; 
 int FI_RTR ; 
 int /*<<< orphan*/  REG_CMR ; 
 int /*<<< orphan*/  REG_FI ; 
 int /*<<< orphan*/  REG_ID1 ; 
 int /*<<< orphan*/  REG_ID2 ; 
 int /*<<< orphan*/  REG_ID3 ; 
 int /*<<< orphan*/  REG_ID4 ; 
 int SFF_BUF ; 
 struct sk_buff* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct can_frame*,int /*<<< orphan*/ ,int) ; 
 struct sja1000_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int) ; 
 int FUNC6 (struct sja1000_priv*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct sja1000_priv*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct sja1000_priv*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct sja1000_priv*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct sja1000_priv*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct sja1000_priv*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct sja1000_priv*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct sja1000_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct sja1000_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(struct net_device *dev)
{
	struct sja1000_priv *priv = FUNC3(dev);
	struct net_device_stats *stats = &dev->stats;
	struct can_frame *cf;
	struct sk_buff *skb;
	uint8_t fi;
	uint8_t dreg;
	canid_t id;
	uint8_t dlc;
	int i;

	skb = FUNC0(sizeof(struct can_frame));
	if (skb == NULL)
		return;
	skb->dev = dev;
	skb->protocol = FUNC1(ETH_P_CAN);

	fi = priv->read_reg(priv, REG_FI);
	dlc = fi & 0x0F;

	if (fi & FI_FF) {
		/* extended frame format (EFF) */
		dreg = EFF_BUF;
		id = (priv->read_reg(priv, REG_ID1) << (5 + 16))
		    | (priv->read_reg(priv, REG_ID2) << (5 + 8))
		    | (priv->read_reg(priv, REG_ID3) << 5)
		    | (priv->read_reg(priv, REG_ID4) >> 3);
		id |= CAN_EFF_FLAG;
	} else {
		/* standard frame format (SFF) */
		dreg = SFF_BUF;
		id = (priv->read_reg(priv, REG_ID1) << 3)
		    | (priv->read_reg(priv, REG_ID2) >> 5);
	}

	if (fi & FI_RTR)
		id |= CAN_RTR_FLAG;

	cf = (struct can_frame *)FUNC5(skb, sizeof(struct can_frame));
	FUNC2(cf, 0, sizeof(struct can_frame));
	cf->can_id = id;
	cf->can_dlc = dlc;
	for (i = 0; i < dlc; i++)
		cf->data[i] = priv->read_reg(priv, dreg++);

	while (i < 8)
		cf->data[i++] = 0;

	/* release receive buffer */
	priv->write_reg(priv, REG_CMR, CMD_RRB);

	FUNC4(skb);

	stats->rx_packets++;
	stats->rx_bytes += dlc;
}