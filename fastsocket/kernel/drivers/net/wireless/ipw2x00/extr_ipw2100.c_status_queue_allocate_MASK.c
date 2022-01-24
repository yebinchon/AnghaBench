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
struct ipw2100_status_queue {int size; struct ipw2100_status* drv; int /*<<< orphan*/  nic; } ;
struct ipw2100_status {int dummy; } ;
struct ipw2100_priv {int /*<<< orphan*/  pci_dev; struct ipw2100_status_queue status_queue; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ipw2100_status*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct ipw2100_priv *priv, int entries)
{
	struct ipw2100_status_queue *q = &priv->status_queue;

	FUNC0("enter\n");

	q->size = entries * sizeof(struct ipw2100_status);
	q->drv =
	    (struct ipw2100_status *)FUNC3(priv->pci_dev,
							  q->size, &q->nic);
	if (!q->drv) {
		FUNC1("Can not allocate status queue.\n");
		return -ENOMEM;
	}

	FUNC2(q->drv, 0, q->size);

	FUNC0("exit\n");

	return 0;
}