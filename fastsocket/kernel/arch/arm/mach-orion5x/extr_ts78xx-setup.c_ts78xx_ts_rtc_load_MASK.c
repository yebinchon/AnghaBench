#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int init; } ;
struct TYPE_5__ {TYPE_1__ ts_rtc; } ;
struct TYPE_6__ {TYPE_2__ supports; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_3__ ts78xx_fpga ; 
 int /*<<< orphan*/  ts78xx_ts_rtc_device ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char,int) ; 

__attribute__((used)) static int FUNC4(void)
{
	int rc;
	unsigned char tmp_rtc0, tmp_rtc1;

	tmp_rtc0 = FUNC2(126);
	tmp_rtc1 = FUNC2(127);

	FUNC3(0x00, 126);
	FUNC3(0x55, 127);
	if (FUNC2(127) == 0x55) {
		FUNC3(0xaa, 127);
		if (FUNC2(127) == 0xaa
				&& FUNC2(126) == 0x00) {
			FUNC3(tmp_rtc0, 126);
			FUNC3(tmp_rtc1, 127);

			if (ts78xx_fpga.supports.ts_rtc.init == 0) {
				rc = FUNC1(&ts78xx_ts_rtc_device);
				if (!rc)
					ts78xx_fpga.supports.ts_rtc.init = 1;
			} else
				rc = FUNC0(&ts78xx_ts_rtc_device);

			return rc;
		}
	}

	return -ENODEV;
}