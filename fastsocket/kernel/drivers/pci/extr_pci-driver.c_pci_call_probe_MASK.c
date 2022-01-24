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
struct pci_driver {int dummy; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct drv_dev_and_id {struct pci_device_id const* member_2; struct pci_dev* member_1; struct pci_driver* member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  cpu_online_mask ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (struct drv_dev_and_id*) ; 
 int nr_cpu_ids ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (int,int (*) (struct drv_dev_and_id*),struct drv_dev_and_id*) ; 

__attribute__((used)) static int FUNC7(struct pci_driver *drv, struct pci_dev *dev,
			  const struct pci_device_id *id)
{
	int error, node;
	struct drv_dev_and_id ddi = { drv, dev, id };

	/* Execute driver initialization on node where the device's
	   bus is attached to.  This way the driver likely allocates
	   its local memory on the right node without any need to
	   change it. */
	node = FUNC2(&dev->dev);
	if (node >= 0) {
		int cpu;

		FUNC3();
		cpu = FUNC0(FUNC1(node), cpu_online_mask);
		if (cpu < nr_cpu_ids)
			error = FUNC6(cpu, local_pci_probe, &ddi);
		else
			error = FUNC4(&ddi);
		FUNC5();
	} else
		error = FUNC4(&ddi);
	return error;
}