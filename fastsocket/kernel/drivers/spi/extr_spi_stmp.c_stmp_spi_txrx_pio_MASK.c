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
struct stmp_spi {scalar_t__ regs; } ;

/* Variables and functions */
 int BM_SSP_CTRL0_DATA_XFER ; 
 int BM_SSP_CTRL0_READ ; 
 int BM_SSP_CTRL0_RUN ; 
 int BM_SSP_CTRL0_XFER_COUNT ; 
 int BM_SSP_STATUS_FIFO_EMPTY ; 
 int ETIMEDOUT ; 
 scalar_t__ HW_SSP_CTRL0 ; 
 scalar_t__ HW_SSP_DATA ; 
 scalar_t__ HW_SSP_STATUS ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct stmp_spi*) ; 
 int /*<<< orphan*/  FUNC6 (struct stmp_spi*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct stmp_spi *ss, int cs,
		unsigned char *buf, int len,
		bool first, bool last, bool write)
{
	if (first)
		FUNC6(ss);

	FUNC3(FUNC4(cs), ss->regs + HW_SSP_CTRL0);

	while (len--) {
		if (last && len <= 0)
			FUNC5(ss);

		FUNC2(BM_SSP_CTRL0_XFER_COUNT,
				ss->regs + HW_SSP_CTRL0);
		FUNC3(1, ss->regs + HW_SSP_CTRL0);

		if (write)
			FUNC2(BM_SSP_CTRL0_READ,
					ss->regs + HW_SSP_CTRL0);
		else
			FUNC3(BM_SSP_CTRL0_READ,
					ss->regs + HW_SSP_CTRL0);

		/* Run! */
		FUNC3(BM_SSP_CTRL0_RUN, ss->regs + HW_SSP_CTRL0);

		if (!FUNC0(FUNC1(ss->regs + HW_SSP_CTRL0) &
				BM_SSP_CTRL0_RUN))
			break;

		if (write)
			FUNC7(*buf, ss->regs + HW_SSP_DATA);

		/* Set TRANSFER */
		FUNC3(BM_SSP_CTRL0_DATA_XFER, ss->regs + HW_SSP_CTRL0);

		if (!write) {
			if (FUNC0((FUNC1(ss->regs + HW_SSP_STATUS) &
					BM_SSP_STATUS_FIFO_EMPTY)))
				break;
			*buf = FUNC1(ss->regs + HW_SSP_DATA) & 0xFF;
		}

		if (!FUNC0(FUNC1(ss->regs + HW_SSP_CTRL0) &
					BM_SSP_CTRL0_RUN))
			break;

		/* advance to the next byte */
		buf++;
	}

	return len < 0 ? 0 : -ETIMEDOUT;
}