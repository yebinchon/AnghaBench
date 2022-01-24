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
typedef  scalar_t__ u64 ;
struct niu {TYPE_1__* parent; } ;
struct ethtool_rxnfc {int data; int /*<<< orphan*/  flow_type; } ;
struct TYPE_2__ {scalar_t__* tcam_key; scalar_t__* flow_key; } ;

/* Variables and functions */
 scalar_t__ CLASS_CODE_SCTP_IPV6 ; 
 scalar_t__ CLASS_CODE_USER_PROG1 ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int RXH_DISCARD ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ TCAM_KEY_DISC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (struct niu*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct niu*,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct niu *np, struct ethtool_rxnfc *nfc)
{
	u64 class;
	u64 flow_key = 0;
	unsigned long flags;

	if (!FUNC2(nfc->flow_type, &class))
		return -EINVAL;

	if (class < CLASS_CODE_USER_PROG1 ||
	    class > CLASS_CODE_SCTP_IPV6)
		return -EINVAL;

	if (nfc->data & RXH_DISCARD) {
		FUNC4(np, flags);
		flow_key = np->parent->tcam_key[class -
					       CLASS_CODE_USER_PROG1];
		flow_key |= TCAM_KEY_DISC;
		FUNC6(FUNC1(class - CLASS_CODE_USER_PROG1), flow_key);
		np->parent->tcam_key[class - CLASS_CODE_USER_PROG1] = flow_key;
		FUNC5(np, flags);
		return 0;
	} else {
		/* Discard was set before, but is not set now */
		if (np->parent->tcam_key[class - CLASS_CODE_USER_PROG1] &
		    TCAM_KEY_DISC) {
			FUNC4(np, flags);
			flow_key = np->parent->tcam_key[class -
					       CLASS_CODE_USER_PROG1];
			flow_key &= ~TCAM_KEY_DISC;
			FUNC6(FUNC1(class - CLASS_CODE_USER_PROG1),
			     flow_key);
			np->parent->tcam_key[class - CLASS_CODE_USER_PROG1] =
				flow_key;
			FUNC5(np, flags);
		}
	}

	if (!FUNC3(nfc->data, &flow_key))
		return -EINVAL;

	FUNC4(np, flags);
	FUNC6(FUNC0(class - CLASS_CODE_USER_PROG1), flow_key);
	np->parent->flow_key[class - CLASS_CODE_USER_PROG1] = flow_key;
	FUNC5(np, flags);

	return 0;
}