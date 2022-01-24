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
struct atmel_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFACE_LOCKOUT_HOST_OFFSET ; 
 int /*<<< orphan*/  IFACE_LOCKOUT_MAC_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (struct atmel_private*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct atmel_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct atmel_private*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct atmel_private *priv)
{
	int i, j = 20;
 retry:
	for (i = 5000; i; i--) {
		if (!FUNC1(priv, FUNC0(priv, IFACE_LOCKOUT_HOST_OFFSET)))
			break;
		FUNC3(20);
	}

	if (!i)
		return 0; /* timed out */

	FUNC2(priv, FUNC0(priv, IFACE_LOCKOUT_MAC_OFFSET), 1);
	if (FUNC1(priv, FUNC0(priv, IFACE_LOCKOUT_HOST_OFFSET))) {
		FUNC2(priv, FUNC0(priv, IFACE_LOCKOUT_MAC_OFFSET), 0);
		if (!j--)
			return 0; /* timed out */
		goto retry;
	}

	return 1;
}