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
struct dmxdev {int exit; TYPE_1__* demux; int /*<<< orphan*/ * filter; TYPE_2__* dvr_dvbdev; TYPE_2__* dvbdev; } ;
struct TYPE_4__ {int users; int /*<<< orphan*/  wait_queue; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* close ) (TYPE_1__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

void FUNC4(struct dmxdev *dmxdev)
{
	dmxdev->exit=1;
	if (dmxdev->dvbdev->users > 1) {
		FUNC3(dmxdev->dvbdev->wait_queue,
				dmxdev->dvbdev->users==1);
	}
	if (dmxdev->dvr_dvbdev->users > 1) {
		FUNC3(dmxdev->dvr_dvbdev->wait_queue,
				dmxdev->dvr_dvbdev->users==1);
	}

	FUNC0(dmxdev->dvbdev);
	FUNC0(dmxdev->dvr_dvbdev);

	FUNC2(dmxdev->filter);
	dmxdev->filter = NULL;
	dmxdev->demux->close(dmxdev->demux);
}