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
struct e100_serial {unsigned char* ioport; int line; int forced_eop; } ;
struct TYPE_2__ {int /*<<< orphan*/  timeout_flush_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (struct e100_serial*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 size_t REG_DATA ; 
 size_t REG_STATUS ; 
 unsigned char SER_DATA_AVAIL_MASK ; 
 unsigned char SER_ERROR_MASK ; 
 int /*<<< orphan*/  FUNC3 (struct e100_serial*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* ser_stat ; 

__attribute__((used)) static int FUNC5(struct e100_serial *info)
{
	/* We check data_avail bit to determine if data has
	 * arrived since last time
	 */
	unsigned char rstat = info->ioport[REG_STATUS];

	/* error or datavail? */
	if (rstat & SER_ERROR_MASK) {
		/* Some error has occurred. If there has been valid data, an
		 * EOP interrupt will be made automatically. If no data, the
		 * normal ser_interrupt should be enabled and handle it.
		 * So do nothing!
		 */
		FUNC0(info->line, "timeout err: rstat 0x%03X\n",
		          rstat | (info->line << 8));
		return 0;
	}

	if (rstat & SER_DATA_AVAIL_MASK) {
		/* Ok data, no error, count it */
		FUNC4(FUNC0(info->line, "timeout: rstat 0x%03X\n",
		          rstat | (info->line << 8)));
		/* Read data to clear status flags */
		(void)info->ioport[REG_DATA];

		info->forced_eop = 0;
		FUNC3(info, "magic");
		return 0;
	}

	/* hit the timeout, force an EOP for the input
	 * dma channel if we haven't already
	 */
	if (!info->forced_eop) {
		info->forced_eop = 1;
		FUNC2(ser_stat[info->line].timeout_flush_cnt++);
		FUNC4(FUNC0(info->line, "timeout EOP %i\n", info->line));
		FUNC1(info);
	}

	return 1;
}