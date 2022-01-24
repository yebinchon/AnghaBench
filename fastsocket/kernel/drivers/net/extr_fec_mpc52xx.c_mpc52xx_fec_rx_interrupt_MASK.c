#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct sk_buff {int /*<<< orphan*/  data; int /*<<< orphan*/  protocol; struct net_device* dev; int /*<<< orphan*/  len; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct TYPE_3__ {int /*<<< orphan*/  rx_dropped; } ;
struct net_device {TYPE_2__ dev; TYPE_1__ stats; } ;
struct mpc52xx_fec_priv {int /*<<< orphan*/  rx_dmatsk; } ;
struct bcom_fec_bd {void* skb_pa; void* status; } ;
struct bcom_bd {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int BCOM_FEC_RX_BD_ERRORS ; 
 int BCOM_FEC_RX_BD_LEN_MASK ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 void* FEC_RX_BUFFER_SIZE ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ ,int*,struct bcom_bd**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 struct sk_buff* FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*) ; 
 void* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,struct net_device*) ; 
 struct mpc52xx_fec_priv* FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int) ; 

__attribute__((used)) static irqreturn_t FUNC12(int irq, void *dev_id)
{
	struct net_device *dev = dev_id;
	struct mpc52xx_fec_priv *priv = FUNC9(dev);

	while (FUNC0(priv->rx_dmatsk)) {
		struct sk_buff *skb;
		struct sk_buff *rskb;
		struct bcom_fec_bd *bd;
		u32 status;

		rskb = FUNC2(priv->rx_dmatsk, &status,
				(struct bcom_bd **)&bd);
		FUNC7(dev->dev.parent, bd->skb_pa, rskb->len,
				 DMA_FROM_DEVICE);

		/* Test for errors in received frame */
		if (status & BCOM_FEC_RX_BD_ERRORS) {
			/* Drop packet and reuse the buffer */
			bd = (struct bcom_fec_bd *)
				FUNC1(priv->rx_dmatsk);

			bd->status = FEC_RX_BUFFER_SIZE;
			bd->skb_pa = FUNC6(dev->dev.parent,
					rskb->data,
					FEC_RX_BUFFER_SIZE, DMA_FROM_DEVICE);

			FUNC3(priv->rx_dmatsk, rskb);

			dev->stats.rx_dropped++;

			continue;
		}

		/* skbs are allocated on open, so now we allocate a new one,
		 * and remove the old (with the packet) */
		skb = FUNC4(FEC_RX_BUFFER_SIZE);
		if (skb) {
			/* Process the received skb */
			int length = status & BCOM_FEC_RX_BD_LEN_MASK;

			FUNC11(rskb, length - 4);	/* length without CRC32 */

			rskb->dev = dev;
			rskb->protocol = FUNC8(rskb, dev);

			FUNC10(rskb);
		} else {
			/* Can't get a new one : reuse the same & drop pkt */
			FUNC5(&dev->dev, "Memory squeeze, dropping packet.\n");
			dev->stats.rx_dropped++;

			skb = rskb;
		}

		bd = (struct bcom_fec_bd *)
			FUNC1(priv->rx_dmatsk);

		bd->status = FEC_RX_BUFFER_SIZE;
		bd->skb_pa = FUNC6(dev->dev.parent, skb->data,
				FEC_RX_BUFFER_SIZE, DMA_FROM_DEVICE);

		FUNC3(priv->rx_dmatsk, skb);
	}

	return IRQ_HANDLED;
}