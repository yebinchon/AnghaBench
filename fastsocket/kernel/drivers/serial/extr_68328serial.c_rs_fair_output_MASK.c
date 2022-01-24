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
struct m68k_serial {char* xmit_buf; int xmit_cnt; size_t xmit_tail; } ;

/* Variables and functions */
 int SERIAL_XMIT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 struct m68k_serial* m68k_soft ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(void)
{
	int left;		/* Output no more than that */
	unsigned long flags;
	struct m68k_serial *info = &m68k_soft[0];
	char c;

	if (info == 0) return;
	if (info->xmit_buf == 0) return;

	FUNC1(flags);
	left = info->xmit_cnt;
	while (left != 0) {
		c = info->xmit_buf[info->xmit_tail];
		info->xmit_tail = (info->xmit_tail+1) & (SERIAL_XMIT_SIZE-1);
		info->xmit_cnt--;
		FUNC0(flags);

		FUNC3(c);

		FUNC1(flags);
		left = FUNC2(info->xmit_cnt, left-1);
	}

	/* Last character is being transmitted now (hopefully). */
	FUNC4(5);

	FUNC0(flags);
	return;
}