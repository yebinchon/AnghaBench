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
struct si470x_device {scalar_t__ users; int /*<<< orphan*/  disconnect_lock; int /*<<< orphan*/  intf; int /*<<< orphan*/  read_queue; struct si470x_device* buffer; struct si470x_device* int_in_buffer; int /*<<< orphan*/  videodev; scalar_t__ disconnected; scalar_t__ int_in_urb; scalar_t__ int_in_running; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct si470x_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct si470x_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 struct si470x_device* FUNC6 (struct file*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct file *file)
{
	struct si470x_device *radio = FUNC6(file);
	int retval = 0;

	/* safety check */
	if (!radio) {
		retval = -ENODEV;
		goto done;
	}

	FUNC1(&radio->disconnect_lock);
	radio->users--;
	if (radio->users == 0) {
		/* shutdown interrupt handler */
		if (radio->int_in_running) {
			radio->int_in_running = 0;
		if (radio->int_in_urb)
			FUNC5(radio->int_in_urb);
		}

		if (radio->disconnected) {
			FUNC7(radio->videodev);
			FUNC0(radio->int_in_buffer);
			FUNC0(radio->buffer);
			FUNC0(radio);
			goto unlock;
		}

		/* cancel read processes */
		FUNC8(&radio->read_queue);

		/* stop radio */
		retval = FUNC3(radio);
		FUNC4(radio->intf);
	}
unlock:
	FUNC2(&radio->disconnect_lock);
done:
	return retval;
}