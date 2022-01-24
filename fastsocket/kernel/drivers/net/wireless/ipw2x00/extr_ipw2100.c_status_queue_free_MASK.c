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
struct TYPE_2__ {int /*<<< orphan*/ * drv; int /*<<< orphan*/  nic; int /*<<< orphan*/  size; } ;
struct ipw2100_priv {TYPE_1__ status_queue; int /*<<< orphan*/  pci_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ipw2100_priv *priv)
{
	FUNC0("enter\n");

	if (priv->status_queue.drv) {
		FUNC1(priv->pci_dev, priv->status_queue.size,
				    priv->status_queue.drv,
				    priv->status_queue.nic);
		priv->status_queue.drv = NULL;
	}

	FUNC0("exit\n");
}