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
struct pci_dev {int dummy; } ;
struct drm_device {scalar_t__ open_count; int /*<<< orphan*/  count_lock; } ;

/* Variables and functions */
 struct drm_device* FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC3(struct pci_dev *pdev)
{
	struct drm_device *dev = FUNC0(pdev);
	bool can_switch;

	FUNC1(&dev->count_lock);
	can_switch = (dev->open_count == 0);
	FUNC2(&dev->count_lock);
	return can_switch;
}