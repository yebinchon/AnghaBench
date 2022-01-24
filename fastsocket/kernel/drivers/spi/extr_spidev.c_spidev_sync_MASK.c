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
struct spidev_data {int /*<<< orphan*/  spi_lock; int /*<<< orphan*/ * spi; } ;
struct spi_message {int status; int actual_length; int /*<<< orphan*/ * context; int /*<<< orphan*/  complete; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ESHUTDOWN ; 
 int /*<<< orphan*/  done ; 
 int FUNC1 (int /*<<< orphan*/ *,struct spi_message*) ; 
 int /*<<< orphan*/  spidev_complete ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t
FUNC5(struct spidev_data *spidev, struct spi_message *message)
{
	FUNC0(done);
	int status;

	message->complete = spidev_complete;
	message->context = &done;

	FUNC2(&spidev->spi_lock);
	if (spidev->spi == NULL)
		status = -ESHUTDOWN;
	else
		status = FUNC1(spidev->spi, message);
	FUNC3(&spidev->spi_lock);

	if (status == 0) {
		FUNC4(&done);
		status = message->status;
		if (status == 0)
			status = message->actual_length;
	}
	return status;
}