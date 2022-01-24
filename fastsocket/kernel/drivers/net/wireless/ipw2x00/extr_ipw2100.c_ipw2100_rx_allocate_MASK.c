#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ipw2100_rx_packet {int /*<<< orphan*/  skb; int /*<<< orphan*/  dma_addr; } ;
struct TYPE_9__ {TYPE_1__* drv; } ;
struct TYPE_8__ {TYPE_2__* drv; } ;
struct ipw2100_priv {TYPE_4__ rx_queue; struct ipw2100_rx_packet* rx_buffers; int /*<<< orphan*/  pci_dev; TYPE_3__ status_queue; } ;
struct TYPE_7__ {scalar_t__ status_fields; } ;
struct TYPE_6__ {int /*<<< orphan*/  buf_length; int /*<<< orphan*/  host_addr; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  IPW_RX_NIC_BUFFER_LENGTH ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int RX_QUEUE_LENGTH ; 
 int FUNC1 (struct ipw2100_priv*,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ipw2100_priv*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ipw2100_priv*,struct ipw2100_rx_packet*) ; 
 int /*<<< orphan*/  FUNC5 (struct ipw2100_rx_packet*) ; 
 struct ipw2100_rx_packet* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct ipw2100_priv*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ipw2100_priv*) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct ipw2100_priv *priv)
{
	int i, j, err = -EINVAL;

	FUNC0("enter\n");

	err = FUNC1(priv, &priv->rx_queue, RX_QUEUE_LENGTH);
	if (err) {
		FUNC0("failed bd_queue_allocate\n");
		return err;
	}

	err = FUNC8(priv, RX_QUEUE_LENGTH);
	if (err) {
		FUNC0("failed status_queue_allocate\n");
		FUNC2(priv, &priv->rx_queue);
		return err;
	}

	/*
	 * allocate packets
	 */
	priv->rx_buffers = FUNC6(RX_QUEUE_LENGTH *
				   sizeof(struct ipw2100_rx_packet),
				   GFP_KERNEL);
	if (!priv->rx_buffers) {
		FUNC0("can't allocate rx packet buffer table\n");

		FUNC2(priv, &priv->rx_queue);

		FUNC9(priv);

		return -ENOMEM;
	}

	for (i = 0; i < RX_QUEUE_LENGTH; i++) {
		struct ipw2100_rx_packet *packet = &priv->rx_buffers[i];

		err = FUNC4(priv, packet);
		if (FUNC10(err)) {
			err = -ENOMEM;
			break;
		}

		/* The BD holds the cache aligned address */
		priv->rx_queue.drv[i].host_addr = packet->dma_addr;
		priv->rx_queue.drv[i].buf_length = IPW_RX_NIC_BUFFER_LENGTH;
		priv->status_queue.drv[i].status_fields = 0;
	}

	if (i == RX_QUEUE_LENGTH)
		return 0;

	for (j = 0; j < i; j++) {
		FUNC7(priv->pci_dev, priv->rx_buffers[j].dma_addr,
				 sizeof(struct ipw2100_rx_packet),
				 PCI_DMA_FROMDEVICE);
		FUNC3(priv->rx_buffers[j].skb);
	}

	FUNC5(priv->rx_buffers);
	priv->rx_buffers = NULL;

	FUNC2(priv, &priv->rx_queue);

	FUNC9(priv);

	return err;
}