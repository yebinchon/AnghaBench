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
struct ipw2100_priv {int /*<<< orphan*/  pci_dev; } ;
struct ipw2100_bd_queue {int entries; int size; struct ipw2100_bd_queue* drv; int /*<<< orphan*/  nic; } ;
struct ipw2100_bd {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ipw2100_bd_queue*,int /*<<< orphan*/ ,int) ; 
 struct ipw2100_bd_queue* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct ipw2100_priv *priv,
			     struct ipw2100_bd_queue *q, int entries)
{
	FUNC0("enter\n");

	FUNC1(q, 0, sizeof(struct ipw2100_bd_queue));

	q->entries = entries;
	q->size = entries * sizeof(struct ipw2100_bd);
	q->drv = FUNC2(priv->pci_dev, q->size, &q->nic);
	if (!q->drv) {
		FUNC0
		    ("can't allocate shared memory for buffer descriptors\n");
		return -ENOMEM;
	}
	FUNC1(q->drv, 0, q->size);

	FUNC0("exit\n");

	return 0;
}