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
typedef  scalar_t__ u64 ;
struct pci_dn {int /*<<< orphan*/  devfn; int /*<<< orphan*/  busno; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 struct pci_dn* FUNC0 (struct device_node*) ; 
 int PCI_RETRY_MAX ; 
 scalar_t__ limit_pci_retries ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ panic_timeout ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC4(char *type, struct device_node *dn,
		int *retry, u64 ret)
{
	if (ret != 0)  {
		struct pci_dn *pdn = FUNC0(dn);

		(*retry)++;
		FUNC3("PCI: %s: Device 0x%04X:%02X  I/O Error(%2d): 0x%04X\n",
				type, pdn->busno, pdn->devfn,
				*retry, (int)ret);
		/*
		 * Bump the retry and check for retry count exceeded.
		 * If, Exceeded, panic the system.
		 */
		if (((*retry) > PCI_RETRY_MAX) &&
				(limit_pci_retries > 0)) {
			FUNC1(0xB6000103);
			panic_timeout = 0;
			FUNC2("PCI: Hardware I/O Error, SRC B6000103, "
					"Automatic Reboot Disabled.\n");
		}
		return -1;	/* Retry Try */
	}
	return 0;
}