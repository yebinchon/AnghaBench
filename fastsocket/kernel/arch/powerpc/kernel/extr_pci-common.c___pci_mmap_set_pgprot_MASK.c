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
struct resource {int flags; } ;
struct pci_dev {int dummy; } ;
typedef  int /*<<< orphan*/  pgprot_t ;
typedef  enum pci_mmap_state { ____Placeholder_pci_mmap_state } pci_mmap_state ;

/* Variables and functions */
 int IORESOURCE_PREFETCH ; 
 int pci_mmap_mem ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static pgprot_t FUNC3(struct pci_dev *dev, struct resource *rp,
				      pgprot_t protection,
				      enum pci_mmap_state mmap_state,
				      int write_combine)
{
	unsigned long prot = FUNC2(protection);

	/* Write combine is always 0 on non-memory space mappings. On
	 * memory space, if the user didn't pass 1, we check for a
	 * "prefetchable" resource. This is a bit hackish, but we use
	 * this to workaround the inability of /sysfs to provide a write
	 * combine bit
	 */
	if (mmap_state != pci_mmap_mem)
		write_combine = 0;
	else if (write_combine == 0) {
		if (rp->flags & IORESOURCE_PREFETCH)
			write_combine = 1;
	}

	/* XXX would be nice to have a way to ask for write-through */
	if (write_combine)
		return FUNC1(prot);
	else
		return FUNC0(prot);
}