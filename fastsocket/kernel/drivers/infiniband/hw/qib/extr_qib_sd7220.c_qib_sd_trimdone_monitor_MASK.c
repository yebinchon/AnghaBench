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
typedef  unsigned long long u64 ;
struct qib_devdata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_7220_SERDES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  IB_MPREG6 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kr_ibcstatus ; 
 int /*<<< orphan*/  FUNC2 (struct qib_devdata*,char*,...) ; 
 unsigned long long FUNC3 (struct qib_devdata*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct qib_devdata*) ; 
 int FUNC5 (struct qib_devdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct qib_devdata *dd,
	const char *where)
{
	int ret, chn, baduns;
	u64 val;

	if (!where)
		where = "?";

	/* give time for reset to settle out in EPB */
	FUNC6(2);

	ret = FUNC4(dd);
	if (ret < 0)
		FUNC2(dd, "not able to re-sync IB EPB (%s)\n", where);

	/* Do "sacrificial read" to get EPB in sane state after reset */
	ret = FUNC5(dd, IB_7220_SERDES, FUNC0(0), 0, 0);
	if (ret < 0)
		FUNC2(dd, "Failed TRIMDONE 1st read, (%s)\n", where);

	/* Check/show "summary" Trim-done bit in IBCStatus */
	val = FUNC3(dd, kr_ibcstatus);
	if (!(val & (1ULL << 11)))
		FUNC2(dd, "IBCS TRIMDONE clear (%s)\n", where);
	/*
	 * Do "dummy read/mod/wr" to get EPB in sane state after reset
	 * The default value for MPREG6 is 0.
	 */
	FUNC6(2);

	ret = FUNC5(dd, IB_7220_SERDES, IB_MPREG6, 0x80, 0x80);
	if (ret < 0)
		FUNC2(dd, "Failed Dummy RMW, (%s)\n", where);
	FUNC6(10);

	baduns = 0;

	for (chn = 3; chn >= 0; --chn) {
		/* Read CTRL reg for each channel to check TRIMDONE */
		ret = FUNC5(dd, IB_7220_SERDES,
			FUNC0(chn), 0, 0);
		if (ret < 0)
			FUNC2(dd,
				"Failed checking TRIMDONE, chn %d (%s)\n",
				chn, where);

		if (!(ret & 0x10)) {
			int probe;

			baduns |= (1 << chn);
			FUNC2(dd,
				"TRIMDONE cleared on chn %d (%02X). (%s)\n",
				chn, ret, where);
			probe = FUNC5(dd, IB_7220_SERDES,
				FUNC1(0), 0, 0);
			FUNC2(dd, "probe is %d (%02X)\n",
				probe, probe);
			probe = FUNC5(dd, IB_7220_SERDES,
				FUNC0(chn), 0, 0);
			FUNC2(dd, "re-read: %d (%02X)\n",
				probe, probe);
			ret = FUNC5(dd, IB_7220_SERDES,
				FUNC0(chn), 0x10, 0x10);
			if (ret < 0)
				FUNC2(dd,
					"Err on TRIMDONE rewrite1\n");
		}
	}
	for (chn = 3; chn >= 0; --chn) {
		/* Read CTRL reg for each channel to check TRIMDONE */
		if (baduns & (1 << chn)) {
			FUNC2(dd,
				"Resetting TRIMDONE on chn %d (%s)\n",
				chn, where);
			ret = FUNC5(dd, IB_7220_SERDES,
				FUNC0(chn), 0x10, 0x10);
			if (ret < 0)
				FUNC2(dd,
					"Failed re-setting TRIMDONE, chn %d (%s)\n",
					chn, where);
		}
	}
}