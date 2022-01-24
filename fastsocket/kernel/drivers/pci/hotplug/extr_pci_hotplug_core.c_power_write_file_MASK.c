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
typedef  int u8 ;
struct pci_slot {struct hotplug_slot* hotplug; } ;
struct hotplug_slot {TYPE_1__* ops; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int (* disable_slot ) (struct hotplug_slot*) ;int (* enable_slot ) (struct hotplug_slot*) ;int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (char const*,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (struct hotplug_slot*) ; 
 int FUNC5 (struct hotplug_slot*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC7(struct pci_slot *pci_slot, const char *buf,
		size_t count)
{
	struct hotplug_slot *slot = pci_slot->hotplug;
	unsigned long lpower;
	u8 power;
	int retval = 0;

	lpower = FUNC3 (buf, NULL, 10);
	power = (u8)(lpower & 0xff);
	FUNC0 ("power = %d\n", power);

	if (!FUNC6(slot->ops->owner)) {
		retval = -ENODEV;
		goto exit;
	}
	switch (power) {
		case 0:
			if (slot->ops->disable_slot)
				retval = slot->ops->disable_slot(slot);
			break;

		case 1:
			if (slot->ops->enable_slot)
				retval = slot->ops->enable_slot(slot);
			break;

		default:
			FUNC1 ("Illegal value specified for power\n");
			retval = -EINVAL;
	}
	FUNC2(slot->ops->owner);

exit:	
	if (retval)
		return retval;
	return count;
}