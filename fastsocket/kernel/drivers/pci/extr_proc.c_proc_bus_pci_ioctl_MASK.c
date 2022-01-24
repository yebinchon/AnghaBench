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
struct proc_dir_entry {struct pci_dev* data; } ;
struct pci_filp_private {int write_combine; int /*<<< orphan*/  mmap_state; } ;
struct pci_dev {int /*<<< orphan*/  bus; } ;
struct file {struct pci_filp_private* private_data; TYPE_1__* f_dentry; } ;
struct TYPE_2__ {int /*<<< orphan*/  d_inode; } ;

/* Variables and functions */
 int EINVAL ; 
#define  PCIIOC_CONTROLLER 131 
#define  PCIIOC_MMAP_IS_IO 130 
#define  PCIIOC_MMAP_IS_MEM 129 
#define  PCIIOC_WRITE_COMBINE 128 
 struct proc_dir_entry* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pci_mmap_io ; 
 int /*<<< orphan*/  pci_mmap_mem ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static long FUNC4(struct file *file, unsigned int cmd,
			       unsigned long arg)
{
	const struct proc_dir_entry *dp = FUNC0(file->f_dentry->d_inode);
	struct pci_dev *dev = dp->data;
#ifdef HAVE_PCI_MMAP
	struct pci_filp_private *fpriv = file->private_data;
#endif /* HAVE_PCI_MMAP */
	int ret = 0;

	FUNC1();

	switch (cmd) {
	case PCIIOC_CONTROLLER:
		ret = FUNC2(dev->bus);
		break;

#ifdef HAVE_PCI_MMAP
	case PCIIOC_MMAP_IS_IO:
		fpriv->mmap_state = pci_mmap_io;
		break;

	case PCIIOC_MMAP_IS_MEM:
		fpriv->mmap_state = pci_mmap_mem;
		break;

	case PCIIOC_WRITE_COMBINE:
		if (arg)
			fpriv->write_combine = 1;
		else
			fpriv->write_combine = 0;
		break;

#endif /* HAVE_PCI_MMAP */

	default:
		ret = -EINVAL;
		break;
	};

	FUNC3();
	return ret;
}