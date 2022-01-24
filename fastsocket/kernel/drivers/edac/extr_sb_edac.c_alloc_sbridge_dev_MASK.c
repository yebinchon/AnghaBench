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
typedef  int /*<<< orphan*/  u8 ;
struct sbridge_dev {int n_devs; int /*<<< orphan*/  list; int /*<<< orphan*/  bus; void* pdev; } ;
struct pci_id_table {int n_devs; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct sbridge_dev*) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sbridge_edac_list ; 

__attribute__((used)) static struct sbridge_dev *FUNC3(u8 bus,
					   const struct pci_id_table *table)
{
	struct sbridge_dev *sbridge_dev;

	sbridge_dev = FUNC1(sizeof(*sbridge_dev), GFP_KERNEL);
	if (!sbridge_dev)
		return NULL;

	sbridge_dev->pdev = FUNC1(sizeof(*sbridge_dev->pdev) * table->n_devs,
				   GFP_KERNEL);
	if (!sbridge_dev->pdev) {
		FUNC0(sbridge_dev);
		return NULL;
	}

	sbridge_dev->bus = bus;
	sbridge_dev->n_devs = table->n_devs;
	FUNC2(&sbridge_dev->list, &sbridge_edac_list);

	return sbridge_dev;
}