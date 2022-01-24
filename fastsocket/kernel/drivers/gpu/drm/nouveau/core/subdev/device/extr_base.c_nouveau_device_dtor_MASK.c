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
struct nouveau_object {int dummy; } ;
struct TYPE_2__ {scalar_t__ mmio; } ;
struct nouveau_device {TYPE_1__ base; int /*<<< orphan*/  head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  nv_devices_mutex ; 

__attribute__((used)) static void
FUNC5(struct nouveau_object *object)
{
	struct nouveau_device *device = (void *)object;

	FUNC2(&nv_devices_mutex);
	FUNC1(&device->head);
	FUNC3(&nv_devices_mutex);

	if (device->base.mmio)
		FUNC0(device->base.mmio);

	FUNC4(&device->base);
}