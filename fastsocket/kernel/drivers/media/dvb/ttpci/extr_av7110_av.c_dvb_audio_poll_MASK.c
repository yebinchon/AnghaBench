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
struct file {struct dvb_device* private_data; } ;
struct dvb_device {struct av7110* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  queue; } ;
struct av7110 {TYPE_1__ aout; scalar_t__ playing; } ;
typedef  int /*<<< orphan*/  poll_table ;

/* Variables and functions */
 unsigned int POLLOUT ; 
 unsigned int POLLWRNORM ; 
 int /*<<< orphan*/  FUNC0 (int,char*,struct av7110*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned int FUNC3(struct file *file, poll_table *wait)
{
	struct dvb_device *dvbdev = file->private_data;
	struct av7110 *av7110 = dvbdev->priv;
	unsigned int mask = 0;

	FUNC0(2, "av7110:%p, \n", av7110);

	FUNC2(file, &av7110->aout.queue, wait);

	if (av7110->playing) {
		if (FUNC1(&av7110->aout) >= 20 * 1024)
			mask |= (POLLOUT | POLLWRNORM);
	} else /* if not playing: may play if asked for */
		mask = (POLLOUT | POLLWRNORM);

	return mask;
}