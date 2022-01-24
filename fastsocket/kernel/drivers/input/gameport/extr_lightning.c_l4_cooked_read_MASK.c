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
struct l4 {int port; } ;
struct gameport {struct l4* port_data; } ;

/* Variables and functions */
 int L4_BUSY ; 
 int /*<<< orphan*/  L4_PORT ; 
 int L4_SELECT_ANALOG ; 
 int L4_SELECT_DIGITAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct gameport *gameport, int *axes, int *buttons)
{
	struct l4 *l4 = gameport->port_data;
	unsigned char status;
	int i, result = -1;

	FUNC2(L4_SELECT_ANALOG, L4_PORT);
	FUNC2(L4_SELECT_DIGITAL + (l4->port >> 2), L4_PORT);

	if (FUNC0(L4_PORT) & L4_BUSY) goto fail;
	FUNC2(l4->port & 3, L4_PORT);

	if (FUNC1()) goto fail;
	status = FUNC0(L4_PORT);

	for (i = 0; i < 4; i++)
		if (status & (1 << i)) {
			if (FUNC1()) goto fail;
			axes[i] = FUNC0(L4_PORT);
			if (axes[i] > 252) axes[i] = -1;
		}

	if (status & 0x10) {
		if (FUNC1()) goto fail;
		*buttons = FUNC0(L4_PORT) & 0x0f;
	}

	result = 0;

fail:	FUNC2(L4_SELECT_ANALOG, L4_PORT);
	return result;
}