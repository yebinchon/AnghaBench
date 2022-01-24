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
struct work_struct {int dummy; } ;
struct maple_device {int /*<<< orphan*/  busy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAPLE_COMMAND_DEVINFO ; 
 int /*<<< orphan*/  MAPLE_ENABLE ; 
 scalar_t__ MAPLE_PNP_INTERVAL ; 
 int MAPLE_PORTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 struct maple_device** baseunits ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__* checked ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__* empty ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct maple_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  maple_bus_type ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ maple_pnp_time ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  maple_sentq ; 
 int /*<<< orphan*/  setup_maple_commands ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct work_struct *work)
{
	int x, locking;
	struct maple_device *mdev;

	if (!FUNC5())
		return;

	FUNC2(0, MAPLE_ENABLE);

	if (!FUNC3(&maple_sentq))
		goto finish;

	/*
	* Set up essential commands - to fetch data and
	* check devices are still present
	*/
	FUNC1(&maple_bus_type, NULL, NULL,
		setup_maple_commands);

	if (FUNC7(jiffies, maple_pnp_time)) {
		/*
		* Scan the empty ports - bus is flakey and may have
		* mis-reported emptyness
		*/
		for (x = 0; x < MAPLE_PORTS; x++) {
			if (checked[x] && empty[x]) {
				mdev = baseunits[x];
				if (!mdev)
					break;
				FUNC0(&mdev->busy, 1);
				locking = FUNC4(mdev, 0,
					MAPLE_COMMAND_DEVINFO, 0, NULL);
				if (!locking)
					break;
				}
			}

		maple_pnp_time = jiffies + MAPLE_PNP_INTERVAL;
	}

finish:
	FUNC6();
}