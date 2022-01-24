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
typedef  scalar_t__ u64 ;
struct tmFwInfoStruct {int dummy; } ;
struct saa7164_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBGLVL_THR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct saa7164_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct saa7164_dev*,struct tmFwInfoStruct*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static int FUNC8(void *data)
{
	struct saa7164_dev *dev = data;
	struct tmFwInfoStruct fwinfo;
	u64 last_poll_time = 0;

	FUNC0(DBGLVL_THR, "thread started\n");

	FUNC6();

	while (1) {
		FUNC3(100);
		if (FUNC2())
			break;
		FUNC7();

		FUNC0(DBGLVL_THR, "thread running\n");

		/* Dump the firmware debug message to console */
		/* Polling this costs us 1-2% of the arm CPU */
		/* convert this into a respnde to interrupt 0x7a */
		FUNC4(dev);

		/* Monitor CPU load every 1 second */
		if ((last_poll_time + 1000 /* ms */) < FUNC1(jiffies)) {
			FUNC5(dev, &fwinfo);
			last_poll_time = FUNC1(jiffies);
		}

	}

	FUNC0(DBGLVL_THR, "thread exiting\n");
	return 0;
}