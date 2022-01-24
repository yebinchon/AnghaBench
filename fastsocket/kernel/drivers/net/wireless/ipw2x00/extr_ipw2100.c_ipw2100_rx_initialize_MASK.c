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
struct TYPE_3__ {int /*<<< orphan*/  nic; } ;
struct TYPE_4__ {scalar_t__ available; scalar_t__ entries; scalar_t__ next; scalar_t__ oldest; } ;
struct ipw2100_priv {TYPE_1__ status_queue; int /*<<< orphan*/  net_dev; TYPE_2__ rx_queue; int /*<<< orphan*/  rxq_stat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  IPW_MEM_HOST_SHARED_RX_BD_BASE ; 
 int /*<<< orphan*/  IPW_MEM_HOST_SHARED_RX_BD_SIZE ; 
 int /*<<< orphan*/  IPW_MEM_HOST_SHARED_RX_READ_INDEX ; 
 int /*<<< orphan*/  IPW_MEM_HOST_SHARED_RX_STATUS_BASE ; 
 int /*<<< orphan*/  IPW_MEM_HOST_SHARED_RX_WRITE_INDEX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ipw2100_priv*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct ipw2100_priv *priv)
{
	FUNC1("enter\n");

	priv->rx_queue.oldest = 0;
	priv->rx_queue.available = priv->rx_queue.entries - 1;
	priv->rx_queue.next = priv->rx_queue.entries - 1;

	FUNC0(&priv->rxq_stat);
	FUNC2(&priv->rxq_stat, priv->rx_queue.available);

	FUNC3(priv, &priv->rx_queue,
			    IPW_MEM_HOST_SHARED_RX_BD_BASE,
			    IPW_MEM_HOST_SHARED_RX_BD_SIZE,
			    IPW_MEM_HOST_SHARED_RX_READ_INDEX,
			    IPW_MEM_HOST_SHARED_RX_WRITE_INDEX);

	/* set up the status queue */
	FUNC4(priv->net_dev, IPW_MEM_HOST_SHARED_RX_STATUS_BASE,
		       priv->status_queue.nic);

	FUNC1("exit\n");
}