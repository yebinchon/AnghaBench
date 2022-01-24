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
typedef  int /*<<< orphan*/  u8 ;
struct qib_qsfp_cache {int tech; int len; int /*<<< orphan*/  date; int /*<<< orphan*/  serial; int /*<<< orphan*/  atten; int /*<<< orphan*/  rev; int /*<<< orphan*/  partnum; int /*<<< orphan*/  oui; int /*<<< orphan*/  vendor; int /*<<< orphan*/  pwr; } ;
struct qib_pportdata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QSFP_DATE_LEN ; 
 int QSFP_DEFAULT_HDR_CNT ; 
 int QSFP_DUMP_CHUNK ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  QSFP_LOT_LEN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QSFP_PN_LEN ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QSFP_REV_LEN ; 
 int /*<<< orphan*/  QSFP_SN_LEN ; 
 int /*<<< orphan*/  QSFP_VEND_LEN ; 
 scalar_t__ pwr_codes ; 
 int /*<<< orphan*/ * qib_qsfp_devtech ; 
 int FUNC5 (struct qib_pportdata*,struct qib_qsfp_cache*) ; 
 int FUNC6 (struct qib_pportdata*,int,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 

int FUNC9(struct qib_pportdata *ppd, char *buf, int len)
{
	struct qib_qsfp_cache cd;
	u8 bin_buff[QSFP_DUMP_CHUNK];
	char lenstr[6];
	int sofar, ret;
	int bidx = 0;

	sofar = 0;
	ret = FUNC5(ppd, &cd);
	if (ret < 0)
		goto bail;

	lenstr[0] = ' ';
	lenstr[1] = '\0';
	if (FUNC2(cd.tech))
		FUNC8(lenstr, "%dM ", cd.len);

	sofar += FUNC7(buf + sofar, len - sofar, "PWR:%.3sW\n", pwr_codes +
			   (FUNC4(cd.pwr) * 4));

	sofar += FUNC7(buf + sofar, len - sofar, "TECH:%s%s\n", lenstr,
			   qib_qsfp_devtech[cd.tech >> 4]);

	sofar += FUNC7(buf + sofar, len - sofar, "Vendor:%.*s\n",
			   QSFP_VEND_LEN, cd.vendor);

	sofar += FUNC7(buf + sofar, len - sofar, "OUI:%06X\n",
			   FUNC3(cd.oui));

	sofar += FUNC7(buf + sofar, len - sofar, "Part#:%.*s\n",
			   QSFP_PN_LEN, cd.partnum);
	sofar += FUNC7(buf + sofar, len - sofar, "Rev:%.*s\n",
			   QSFP_REV_LEN, cd.rev);
	if (FUNC2(cd.tech))
		sofar += FUNC7(buf + sofar, len - sofar, "Atten:%d, %d\n",
				   FUNC1(cd.atten),
				   FUNC0(cd.atten));
	sofar += FUNC7(buf + sofar, len - sofar, "Serial:%.*s\n",
			   QSFP_SN_LEN, cd.serial);
	sofar += FUNC7(buf + sofar, len - sofar, "Date:%.*s\n",
			   QSFP_DATE_LEN, cd.date);
	sofar += FUNC7(buf + sofar, len - sofar, "Lot:%.*s\n",
			   QSFP_LOT_LEN, cd.date);

	while (bidx < QSFP_DEFAULT_HDR_CNT) {
		int iidx;
		ret = FUNC6(ppd, bidx, bin_buff, QSFP_DUMP_CHUNK);
		if (ret < 0)
			goto bail;
		for (iidx = 0; iidx < ret; ++iidx) {
			sofar += FUNC7(buf + sofar, len-sofar, " %02X",
				bin_buff[iidx]);
		}
		sofar += FUNC7(buf + sofar, len - sofar, "\n");
		bidx += QSFP_DUMP_CHUNK;
	}
	ret = sofar;
bail:
	return ret;
}