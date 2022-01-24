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
typedef  int /*<<< orphan*/  uint8_t ;
struct mtd_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int WB_FULL ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(struct mtd_info *mtd,
				const uint8_t *buf, int len)
{
	int i;

	for (i = 0; i < len; i++) {
		while (FUNC1() & WB_FULL)
			FUNC3();

		FUNC2(buf[i]);
		FUNC0();
	}
}