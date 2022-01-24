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
struct pci_id_table {int n_devs; scalar_t__ descr; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 struct pci_id_table* pci_dev_descr_sbridge_table ; 
 int FUNC0 (struct pci_dev**,int /*<<< orphan*/ *,struct pci_id_table const*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static int FUNC2(u8 *num_mc)
{
	int i, rc;
	struct pci_dev *pdev = NULL;
	const struct pci_id_table *table = pci_dev_descr_sbridge_table;

	while (table && table->descr) {
		for (i = 0; i < table->n_devs; i++) {
			pdev = NULL;
			do {
				rc = FUNC0(&pdev, num_mc,
							   table, i);
				if (rc < 0) {
					if (i == 0) {
						i = table->n_devs;
						break;
					}
					FUNC1();
					return -ENODEV;
				}
			} while (pdev);
		}
		table++;
	}

	return 0;
}