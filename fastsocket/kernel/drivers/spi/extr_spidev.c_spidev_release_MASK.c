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
struct spidev_data {int /*<<< orphan*/  spi_lock; int /*<<< orphan*/ * spi; struct spidev_data* buffer; int /*<<< orphan*/  users; } ;
struct inode {int dummy; } ;
struct file {struct spidev_data* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  device_list_lock ; 
 int /*<<< orphan*/  FUNC0 (struct spidev_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *filp)
{
	struct spidev_data	*spidev;
	int			status = 0;

	FUNC1(&device_list_lock);
	spidev = filp->private_data;
	filp->private_data = NULL;

	/* last close? */
	spidev->users--;
	if (!spidev->users) {
		int		dofree;

		FUNC0(spidev->buffer);
		spidev->buffer = NULL;

		/* ... after we unbound from the underlying device? */
		FUNC3(&spidev->spi_lock);
		dofree = (spidev->spi == NULL);
		FUNC4(&spidev->spi_lock);

		if (dofree)
			FUNC0(spidev);
	}
	FUNC2(&device_list_lock);

	return status;
}