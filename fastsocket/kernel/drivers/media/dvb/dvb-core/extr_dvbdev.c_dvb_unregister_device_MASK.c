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
struct dvb_device {size_t minor; struct dvb_device* fops; int /*<<< orphan*/  list_head; } ;

/* Variables and functions */
 int /*<<< orphan*/  DVB_MAJOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dvb_class ; 
 int /*<<< orphan*/ ** dvb_minors ; 
 int /*<<< orphan*/  FUNC3 (struct dvb_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  minor_rwsem ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct dvb_device *dvbdev)
{
	if (!dvbdev)
		return;

	FUNC2(&minor_rwsem);
	dvb_minors[dvbdev->minor] = NULL;
	FUNC5(&minor_rwsem);

	FUNC1(dvb_class, FUNC0(DVB_MAJOR, dvbdev->minor));

	FUNC4 (&dvbdev->list_head);
	FUNC3 (dvbdev->fops);
	FUNC3 (dvbdev);
}