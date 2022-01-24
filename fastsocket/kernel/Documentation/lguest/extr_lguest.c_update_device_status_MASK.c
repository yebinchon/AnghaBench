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
struct device {scalar_t__ running; TYPE_1__* desc; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int status; } ;

/* Variables and functions */
 int VIRTIO_CONFIG_S_DRIVER_OK ; 
 int VIRTIO_CONFIG_S_FAILED ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct device *dev)
{
	/* A zero status is a reset, otherwise it's a set of flags. */
	if (dev->desc->status == 0)
		FUNC0(dev);
	else if (dev->desc->status & VIRTIO_CONFIG_S_FAILED) {
		FUNC2("Device %s configuration FAILED", dev->name);
		if (dev->running)
			FUNC0(dev);
	} else if (dev->desc->status & VIRTIO_CONFIG_S_DRIVER_OK) {
		if (!dev->running)
			FUNC1(dev);
	}
}