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
struct tg3 {scalar_t__ nvram_lock_cnt; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  NVRAM ; 
 int /*<<< orphan*/  NVRAM_SWARB ; 
 int SWARB_GNT1 ; 
 int /*<<< orphan*/  SWARB_REQ_CLR1 ; 
 int /*<<< orphan*/  SWARB_REQ_SET1 ; 
 scalar_t__ FUNC0 (struct tg3*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct tg3 *tp)
{
	if (FUNC0(tp, NVRAM)) {
		int i;

		if (tp->nvram_lock_cnt == 0) {
			FUNC2(NVRAM_SWARB, SWARB_REQ_SET1);
			for (i = 0; i < 8000; i++) {
				if (FUNC1(NVRAM_SWARB) & SWARB_GNT1)
					break;
				FUNC3(20);
			}
			if (i == 8000) {
				FUNC2(NVRAM_SWARB, SWARB_REQ_CLR1);
				return -ENODEV;
			}
		}
		tp->nvram_lock_cnt++;
	}
	return 0;
}