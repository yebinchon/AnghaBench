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
struct TYPE_2__ {int ctl; } ;

/* Variables and functions */
 int /*<<< orphan*/  HD_CMD ; 
 int /*<<< orphan*/  HD_ERROR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int hd_error ; 
 TYPE_1__* hd_info ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static void FUNC5(void)
{
	int	i;

	FUNC3(4, HD_CMD);
	for (i = 0; i < 1000; i++) FUNC0();
	FUNC3(hd_info[0].ctl & 0x0f, HD_CMD);
	for (i = 0; i < 1000; i++) FUNC0();
	if (FUNC1())
		FUNC4("hd: controller still busy\n");
	else if ((hd_error = FUNC2(HD_ERROR)) != 1)
		FUNC4("hd: controller reset failed: %02x\n", hd_error);
}