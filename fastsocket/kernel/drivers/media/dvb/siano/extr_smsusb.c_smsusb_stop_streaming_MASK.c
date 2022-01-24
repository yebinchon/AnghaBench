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
struct smsusb_device_t {TYPE_1__* surbs; int /*<<< orphan*/  coredev; } ;
struct TYPE_2__ {int /*<<< orphan*/ * cb; int /*<<< orphan*/  urb; } ;

/* Variables and functions */
 int MAX_URBS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct smsusb_device_t *dev)
{
	int i;

	for (i = 0; i < MAX_URBS; i++) {
		FUNC1(&dev->surbs[i].urb);

		if (dev->surbs[i].cb) {
			FUNC0(dev->coredev, dev->surbs[i].cb);
			dev->surbs[i].cb = NULL;
		}
	}
}