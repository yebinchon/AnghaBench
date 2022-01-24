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
typedef  int /*<<< orphan*/  uint ;
typedef  scalar_t__ u8 ;
struct if_cs_card {int dummy; } ;

/* Variables and functions */
 int ETIME ; 
 scalar_t__ FUNC0 (struct if_cs_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(struct if_cs_card *card, uint addr, u8 reg)
{
	int i;

	for (i = 0; i < 100000; i++) {
		u8 val = FUNC0(card, addr);
		if (val == reg)
			return 0;
		FUNC1(5);
	}
	return -ETIME;
}