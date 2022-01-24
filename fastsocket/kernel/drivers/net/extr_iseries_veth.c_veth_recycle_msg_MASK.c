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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/ * len; int /*<<< orphan*/ * addr; } ;
struct veth_msg {int /*<<< orphan*/  token; TYPE_1__ data; int /*<<< orphan*/ * skb; int /*<<< orphan*/  dev; scalar_t__ in_use; } ;
struct veth_lpar_connection {int state; int /*<<< orphan*/  remote_lp; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int VETH_STATE_OPEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct veth_lpar_connection*,struct veth_msg*) ; 

__attribute__((used)) static void FUNC6(struct veth_lpar_connection *cnx,
			     struct veth_msg *msg)
{
	u32 dma_address, dma_length;

	if (msg->in_use) {
		msg->in_use = 0;
		dma_address = msg->data.addr[0];
		dma_length = msg->data.len[0];

		if (!FUNC1(msg->dev, dma_address))
			FUNC2(msg->dev, dma_address, dma_length,
					DMA_TO_DEVICE);

		if (msg->skb) {
			FUNC0(msg->skb);
			msg->skb = NULL;
		}

		FUNC3(&msg->data, 0, sizeof(msg->data));
		FUNC5(cnx, msg);
	} else if (cnx->state & VETH_STATE_OPEN) {
		FUNC4("Non-pending frame (# %d) acked by LPAR %d.\n",
				cnx->remote_lp, msg->token);
	}
}