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
typedef  int u8 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  PCI_CACHE_LINE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 
 int pci_cache_line_size ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(struct pci_dev *dev)
{
	u8 cacheline_size;

	if (!pci_cache_line_size)
		return -EINVAL;		/* The system doesn't support MWI. */

	/* Validate current setting: the PCI_CACHE_LINE_SIZE must be
	   equal to or multiple of the right value. */
	FUNC1(dev, PCI_CACHE_LINE_SIZE, &cacheline_size);
	if (cacheline_size >= pci_cache_line_size &&
	    (cacheline_size % pci_cache_line_size) == 0)
		return 0;

	/* Write the correct value. */
	FUNC2(dev, PCI_CACHE_LINE_SIZE, pci_cache_line_size);
	/* Read it back. */
	FUNC1(dev, PCI_CACHE_LINE_SIZE, &cacheline_size);
	if (cacheline_size == pci_cache_line_size)
		return 0;

	FUNC0(KERN_DEBUG, &dev->dev, "cache line size of %d is not "
		   "supported\n", pci_cache_line_size << 2);

	return -EINVAL;
}