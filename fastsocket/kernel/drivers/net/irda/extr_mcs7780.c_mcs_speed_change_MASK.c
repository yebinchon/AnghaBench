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
struct mcs_cb {int new_speed; int speed; int transceiver_type; } ;
typedef  int __u16 ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int MCS_FIR ; 
 int MCS_IRINTX ; 
 int /*<<< orphan*/  MCS_MINRXPW_REG ; 
 int /*<<< orphan*/  MCS_MODE_REG ; 
 int MCS_RESET ; 
 int /*<<< orphan*/  MCS_RESV_REG ; 
 int MCS_SPEED_MASK ; 
#define  MCS_TSC_AGILENT 130 
#define  MCS_TSC_SHARP 129 
#define  MCS_TSC_VISHAY 128 
 int /*<<< orphan*/  FUNC2 (struct mcs_cb*,int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (struct mcs_cb*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct mcs_cb*) ; 
 int FUNC5 (struct mcs_cb*) ; 
 int FUNC6 (struct mcs_cb*) ; 
 int* mcs_speed_set ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct mcs_cb *mcs)
{
	int ret = 0;
	int rst = 0;
	int cnt = 0;
	__u16 nspeed;
	__u16 rval;

	nspeed = mcs_speed_set[(mcs->new_speed >> 8) & 0x0f];

	do {
		FUNC2(mcs, MCS_RESV_REG, &rval);
	} while(cnt++ < 100 && (rval & MCS_IRINTX));

	if (cnt > 100) {
		FUNC0("unable to change speed\n");
		ret = -EIO;
		goto error;
	}

	FUNC2(mcs, MCS_MODE_REG, &rval);

	/* MINRXPW values recomended by MosChip */
	if (mcs->new_speed <= 115200) {
		rval &= ~MCS_FIR;

		if ((rst = (mcs->speed > 115200)))
			FUNC3(mcs, MCS_MINRXPW_REG, 0);

	} else if (mcs->new_speed <= 1152000) {
		rval &= ~MCS_FIR;

		if ((rst = !(mcs->speed == 576000 || mcs->speed == 1152000)))
			FUNC3(mcs, MCS_MINRXPW_REG, 5);

	} else {
		rval |= MCS_FIR;

		if ((rst = (mcs->speed != 4000000)))
			FUNC3(mcs, MCS_MINRXPW_REG, 5);

	}

	rval &= ~MCS_SPEED_MASK;
	rval |= nspeed;

	ret = FUNC3(mcs, MCS_MODE_REG, rval);
	if (FUNC7(ret))
		goto error;

	if (rst)
		switch (mcs->transceiver_type) {
		case MCS_TSC_VISHAY:
			ret = FUNC6(mcs);
			break;

		case MCS_TSC_SHARP:
			ret = FUNC5(mcs);
			break;

		case MCS_TSC_AGILENT:
			ret = FUNC4(mcs);
			break;

		default:
			ret = 1;
			FUNC1("Unknown transceiver type: %d\n",
				     mcs->transceiver_type);
		}
	if (FUNC7(ret))
		goto error;

	FUNC2(mcs, MCS_MODE_REG, &rval);
	rval &= ~MCS_RESET;
	ret = FUNC3(mcs, MCS_MODE_REG, rval);

	mcs->speed = mcs->new_speed;
	error:
		mcs->new_speed = 0;
		return ret;
}