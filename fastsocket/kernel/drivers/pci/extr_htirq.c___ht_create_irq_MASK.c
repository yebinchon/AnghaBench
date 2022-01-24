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
typedef  int u32 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int address_lo; int address_hi; } ;
struct ht_irq_cfg {int pos; int idx; TYPE_1__ msg; int /*<<< orphan*/ * update; struct pci_dev* dev; } ;
typedef  int /*<<< orphan*/  ht_irq_update_t ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HT_CAPTYPE_IRQ ; 
 scalar_t__ FUNC0 (int,struct pci_dev*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  ht_irq_lock ; 
 int /*<<< orphan*/  FUNC4 (struct ht_irq_cfg*) ; 
 struct ht_irq_cfg* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int,struct ht_irq_cfg*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC12(struct pci_dev *dev, int idx, ht_irq_update_t *update)
{
	struct ht_irq_cfg *cfg;
	unsigned long flags;
	u32 data;
	int max_irq;
	int pos;
	int irq;
	int node;

	pos = FUNC6(dev, HT_CAPTYPE_IRQ);
	if (!pos)
		return -EINVAL;

	/* Verify the idx I want to use is in range */
	FUNC10(&ht_irq_lock, flags);
	FUNC8(dev, pos + 2, 1);
	FUNC7(dev, pos + 4, &data);
	FUNC11(&ht_irq_lock, flags);

	max_irq = (data >> 16) & 0xff;
	if ( idx > max_irq)
		return -EINVAL;

	cfg = FUNC5(sizeof(*cfg), GFP_KERNEL);
	if (!cfg)
		return -ENOMEM;

	cfg->dev = dev;
	cfg->update = update;
	cfg->pos = pos;
	cfg->idx = 0x10 + (idx * 2);
	/* Initialize msg to a value that will never match the first write. */
	cfg->msg.address_lo = 0xffffffff;
	cfg->msg.address_hi = 0xffffffff;

	node = FUNC2(&dev->dev);
	irq = FUNC1(0, node);

	if (irq <= 0) {
		FUNC4(cfg);
		return -EBUSY;
	}
	FUNC9(irq, cfg);

	if (FUNC0(irq, dev) < 0) {
		FUNC3(irq);
		return -EBUSY;
	}

	return irq;
}