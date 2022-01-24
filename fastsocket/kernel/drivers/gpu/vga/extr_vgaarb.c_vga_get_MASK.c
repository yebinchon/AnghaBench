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
typedef  int /*<<< orphan*/  wait_queue_t ;
struct vga_device {int dummy; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int EINTR ; 
 int ENODEV ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 struct vga_device* FUNC0 (struct vga_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 struct pci_dev* FUNC10 () ; 
 int /*<<< orphan*/  vga_lock ; 
 int /*<<< orphan*/  vga_wait_queue ; 
 struct vga_device* FUNC11 (struct pci_dev*) ; 

int FUNC12(struct pci_dev *pdev, unsigned int rsrc, int interruptible)
{
	struct vga_device *vgadev, *conflict;
	unsigned long flags;
	wait_queue_t wait;
	int rc = 0;

	FUNC9();
	/* The one who calls us should check for this, but lets be sure... */
	if (pdev == NULL)
		pdev = FUNC10();
	if (pdev == NULL)
		return 0;

	for (;;) {
		FUNC7(&vga_lock, flags);
		vgadev = FUNC11(pdev);
		if (vgadev == NULL) {
			FUNC8(&vga_lock, flags);
			rc = -ENODEV;
			break;
		}
		conflict = FUNC0(vgadev, rsrc);
		FUNC8(&vga_lock, flags);
		if (conflict == NULL)
			break;


		/* We have a conflict, we wait until somebody kicks the
		 * work queue. Currently we have one work queue that we
		 * kick each time some resources are released, but it would
		 * be fairly easy to have a per device one so that we only
		 * need to attach to the conflicting device
		 */
		FUNC2(&wait, current);
		FUNC1(&vga_wait_queue, &wait);
		FUNC5(interruptible ?
				  TASK_INTERRUPTIBLE :
				  TASK_UNINTERRUPTIBLE);
		if (FUNC6(current)) {
			rc = -EINTR;
			break;
		}
		FUNC4();
		FUNC3(&vga_wait_queue, &wait);
		FUNC5(TASK_RUNNING);
	}
	return rc;
}