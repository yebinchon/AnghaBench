#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pci_error_handlers {int /*<<< orphan*/  (* resume ) (struct pci_dev*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  sem; } ;
struct pci_dev {TYPE_1__ dev; TYPE_2__* driver; int /*<<< orphan*/  error_state; } ;
struct TYPE_4__ {struct pci_error_handlers* err_handler; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pci_channel_io_normal ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct pci_dev *dev, void *data)
{
	const struct pci_error_handlers *err_handler;

	FUNC0(&dev->dev.sem);
	dev->error_state = pci_channel_io_normal;

	if (!dev->driver ||
		!dev->driver->err_handler ||
		!dev->driver->err_handler->resume)
		goto out;

	err_handler = dev->driver->err_handler;
	err_handler->resume(dev);
out:
	FUNC2(&dev->dev.sem);
	return 0;
}