#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* ipmi_user_t ;
typedef  TYPE_2__* ipmi_smi_t ;
struct TYPE_6__ {int maintenance_mode; int maintenance_mode_enable; int /*<<< orphan*/  maintenance_mode_lock; int /*<<< orphan*/  auto_maintenance_timeout; } ;
struct TYPE_5__ {TYPE_2__* intf; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IPMI_MAINTENANCE_MODE_AUTO 130 
#define  IPMI_MAINTENANCE_MODE_OFF 129 
#define  IPMI_MAINTENANCE_MODE_ON 128 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC3(ipmi_user_t user, int mode)
{
	int           rv = 0;
	unsigned long flags;
	ipmi_smi_t    intf = user->intf;

	FUNC1(&intf->maintenance_mode_lock, flags);
	if (intf->maintenance_mode != mode) {
		switch (mode) {
		case IPMI_MAINTENANCE_MODE_AUTO:
			intf->maintenance_mode = mode;
			intf->maintenance_mode_enable
				= (intf->auto_maintenance_timeout > 0);
			break;

		case IPMI_MAINTENANCE_MODE_OFF:
			intf->maintenance_mode = mode;
			intf->maintenance_mode_enable = 0;
			break;

		case IPMI_MAINTENANCE_MODE_ON:
			intf->maintenance_mode = mode;
			intf->maintenance_mode_enable = 1;
			break;

		default:
			rv = -EINVAL;
			goto out_unlock;
		}

		FUNC0(intf);
	}
 out_unlock:
	FUNC2(&intf->maintenance_mode_lock, flags);

	return rv;
}