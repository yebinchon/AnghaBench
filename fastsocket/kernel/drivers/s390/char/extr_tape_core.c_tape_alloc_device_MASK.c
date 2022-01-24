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
struct tape_device {int first_minor; int /*<<< orphan*/  tape_dnr; int /*<<< orphan*/  ref_count; scalar_t__* modeset_byte; int /*<<< orphan*/  medium_state; int /*<<< orphan*/  tape_state; int /*<<< orphan*/  wait_queue; int /*<<< orphan*/  state_change_wq; int /*<<< orphan*/  node; int /*<<< orphan*/  req_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct tape_device* FUNC1 (int /*<<< orphan*/ ) ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MS_UNKNOWN ; 
 int /*<<< orphan*/  TS_INIT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct tape_device*) ; 
 scalar_t__* FUNC7 (int,int) ; 
 struct tape_device* FUNC8 (int,int) ; 
 int /*<<< orphan*/  tape_delayed_next_request ; 

__attribute__((used)) static struct tape_device *
FUNC9(void)
{
	struct tape_device *device;

	device = FUNC8(sizeof(struct tape_device), GFP_KERNEL);
	if (device == NULL) {
		FUNC0(2, "ti:no mem\n");
		return FUNC1(-ENOMEM);
	}
	device->modeset_byte = FUNC7(1, GFP_KERNEL | GFP_DMA);
	if (device->modeset_byte == NULL) {
		FUNC0(2, "ti:no mem\n");
		FUNC6(device);
		return FUNC1(-ENOMEM);
	}
	FUNC3(&device->req_queue);
	FUNC3(&device->node);
	FUNC5(&device->state_change_wq);
	FUNC5(&device->wait_queue);
	device->tape_state = TS_INIT;
	device->medium_state = MS_UNKNOWN;
	*device->modeset_byte = 0;
	device->first_minor = -1;
	FUNC4(&device->ref_count, 1);
	FUNC2(&device->tape_dnr, tape_delayed_next_request);

	return device;
}