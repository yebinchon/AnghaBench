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

/* Variables and functions */
 int L4_BUSY ; 
 int L4_CMD_GETCAL ; 
 int /*<<< orphan*/  L4_PORT ; 
 int L4_SELECT_ANALOG ; 
 int L4_SELECT_DIGITAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(int port, int *cal)
{
	int i, result = -1;

	FUNC2(L4_SELECT_ANALOG, L4_PORT);
	FUNC2(L4_SELECT_DIGITAL + (port >> 2), L4_PORT);
	if (FUNC0(L4_PORT) & L4_BUSY)
		goto out;

	FUNC2(L4_CMD_GETCAL, L4_PORT);
	if (FUNC1())
		goto out;

	if (FUNC0(L4_PORT) != L4_SELECT_DIGITAL + (port >> 2))
		goto out;

	if (FUNC1())
		goto out;
        FUNC2(port & 3, L4_PORT);

	for (i = 0; i < 4; i++) {
		if (FUNC1())
			goto out;
		cal[i] = FUNC0(L4_PORT);
	}

	result = 0;

out:	FUNC2(L4_SELECT_ANALOG, L4_PORT);
	return result;
}