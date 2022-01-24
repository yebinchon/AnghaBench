#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct packet_task {scalar_t__ tx_type; struct hpsb_packet* packet; TYPE_1__* skb; int /*<<< orphan*/  addr; int /*<<< orphan*/  dest_node; struct eth1394_priv* priv; } ;
struct hpsb_packet {int dummy; } ;
struct eth1394_priv {int /*<<< orphan*/  host; } ;
typedef  int /*<<< orphan*/  quadlet_t ;
struct TYPE_2__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EIO ; 
 int ENOMEM ; 
 scalar_t__ ETH1394_GASP ; 
 struct hpsb_packet* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ether1394_complete_cb ; 
 int /*<<< orphan*/  FUNC1 (struct hpsb_packet*) ; 
 int /*<<< orphan*/  FUNC2 (struct hpsb_packet*,struct eth1394_priv*,TYPE_1__*,int) ; 
 scalar_t__ FUNC3 (struct hpsb_packet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct hpsb_packet*) ; 
 scalar_t__ FUNC5 (struct hpsb_packet*) ; 
 int /*<<< orphan*/  FUNC6 (struct hpsb_packet*,int /*<<< orphan*/ ,struct packet_task*) ; 

__attribute__((used)) static int FUNC7(struct packet_task *ptask, unsigned int tx_len)
{
	struct eth1394_priv *priv = ptask->priv;
	struct hpsb_packet *packet = NULL;

	packet = FUNC0(priv->host);
	if (!packet)
		return -ENOMEM;

	if (ptask->tx_type == ETH1394_GASP) {
		int length = tx_len + 2 * sizeof(quadlet_t);

		FUNC2(packet, priv, ptask->skb, length);
	} else if (FUNC3(packet, priv->host,
					       ptask->dest_node,
					       ptask->addr, ptask->skb->data,
					       tx_len)) {
		FUNC4(packet);
		return -EAGAIN;
	}

	ptask->packet = packet;
	FUNC6(ptask->packet, ether1394_complete_cb,
				      ptask);

	if (FUNC5(packet) < 0) {
		FUNC1(packet);
		return -EIO;
	}

	return 0;
}