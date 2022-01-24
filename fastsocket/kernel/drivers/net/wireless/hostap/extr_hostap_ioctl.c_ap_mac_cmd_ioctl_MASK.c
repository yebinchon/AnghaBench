#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* ap; int /*<<< orphan*/  dev; } ;
typedef  TYPE_1__ local_info_t ;
struct TYPE_8__ {int /*<<< orphan*/  policy; } ;
struct TYPE_7__ {TYPE_5__ mac_restrictions; } ;

/* Variables and functions */
#define  AP_MAC_CMD_FLUSH 132 
#define  AP_MAC_CMD_KICKALL 131 
#define  AP_MAC_CMD_POLICY_ALLOW 130 
#define  AP_MAC_CMD_POLICY_DENY 129 
#define  AP_MAC_CMD_POLICY_OPEN 128 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  MAC_POLICY_ALLOW ; 
 int /*<<< orphan*/  MAC_POLICY_DENY ; 
 int /*<<< orphan*/  MAC_POLICY_OPEN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(local_info_t *local, int *cmd)
{
	int ret = 0;

	switch (*cmd) {
	case AP_MAC_CMD_POLICY_OPEN:
		local->ap->mac_restrictions.policy = MAC_POLICY_OPEN;
		break;
	case AP_MAC_CMD_POLICY_ALLOW:
		local->ap->mac_restrictions.policy = MAC_POLICY_ALLOW;
		break;
	case AP_MAC_CMD_POLICY_DENY:
		local->ap->mac_restrictions.policy = MAC_POLICY_DENY;
		break;
	case AP_MAC_CMD_FLUSH:
		FUNC0(&local->ap->mac_restrictions);
		break;
	case AP_MAC_CMD_KICKALL:
		FUNC1(local->ap);
		FUNC2(local->dev, local->ap, 0);
		break;
	default:
		ret = -EOPNOTSUPP;
		break;
	}

	return ret;
}