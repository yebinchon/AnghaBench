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
struct tape_device {struct tape_device* modeset_byte; int /*<<< orphan*/  ref_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tape_device*) ; 

struct tape_device *
FUNC3(struct tape_device *device)
{
	int remain;

	remain = FUNC1(&device->ref_count);
	if (remain > 0) {
		FUNC0(4, "tape_put_device(%p) -> %i\n", device, remain);
	} else {
		if (remain < 0) {
			FUNC0(4, "put device without reference\n");
		} else {
			FUNC0(4, "tape_free_device(%p)\n", device);
			FUNC2(device->modeset_byte);
			FUNC2(device);
		}
	}

	return NULL;			
}