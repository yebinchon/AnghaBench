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
struct spi_message {int status; int /*<<< orphan*/ * context; int /*<<< orphan*/  complete; } ;
struct spi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  done ; 
 int FUNC1 (struct spi_device*,struct spi_message*) ; 
 int /*<<< orphan*/  spi_complete ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct spi_device *spi, struct spi_message *message)
{
	FUNC0(done);
	int status;

	message->complete = spi_complete;
	message->context = &done;
	status = FUNC1(spi, message);
	if (status == 0) {
		FUNC2(&done);
		status = message->status;
	}
	message->context = NULL;
	return status;
}