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
struct mcs_cb {int speed; int transceiver_type; scalar_t__ receive_mode; scalar_t__ new_speed; scalar_t__ sir_tweak; } ;
typedef  int __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int MCS_ASK ; 
 int MCS_BBTG ; 
 int MCS_DRIVER ; 
 int MCS_DTD ; 
 int MCS_FIR ; 
 int /*<<< orphan*/  MCS_MINRXPW_REG ; 
 int /*<<< orphan*/  MCS_MODE_REG ; 
 int MCS_PLLPWDN ; 
 int MCS_RESET ; 
 int MCS_RXFAST ; 
 int MCS_SIPEN ; 
 int MCS_SIR16US ; 
 int MCS_SPEED_9600 ; 
 int MCS_SPEED_MASK ; 
#define  MCS_TSC_AGILENT 130 
#define  MCS_TSC_SHARP 129 
#define  MCS_TSC_VISHAY 128 
 int /*<<< orphan*/  MCS_XCVR_REG ; 
 int FUNC2 (struct mcs_cb*,int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (struct mcs_cb*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct mcs_cb*) ; 
 int FUNC5 (struct mcs_cb*) ; 
 int FUNC6 (struct mcs_cb*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static inline int FUNC8(struct mcs_cb *mcs)
{
	int ret = 0;
	__u16 rval;
	char *msg;

	msg = "Basic transceiver setup error.";

	/* read value of MODE Register, set the DRIVER and RESET bits
	* and write value back out to MODE Register
	*/
	ret = FUNC2(mcs, MCS_MODE_REG, &rval);
	if(FUNC7(ret != 2))
		goto error;
	rval |= MCS_DRIVER;	/* put the mcs7780 into configuration mode. */
	ret = FUNC3(mcs, MCS_MODE_REG, rval);
	if(FUNC7(ret))
		goto error;

	rval = 0;		/* set min pulse width to 0 initially. */
	ret = FUNC3(mcs, MCS_MINRXPW_REG, rval);
	if(FUNC7(ret))
		goto error;

	ret = FUNC2(mcs, MCS_MODE_REG, &rval);
	if(FUNC7(ret != 2))
		goto error;

	rval &= ~MCS_FIR;	/* turn off fir mode. */
	if(mcs->sir_tweak)
		rval |= MCS_SIR16US;	/* 1.6us pulse width */
	else
		rval &= ~MCS_SIR16US;	/* 3/16 bit time pulse width */

	/* make sure ask mode and back to back packets are off. */
	rval &= ~(MCS_BBTG | MCS_ASK);

	rval &= ~MCS_SPEED_MASK;
	rval |= MCS_SPEED_9600;		/* make sure initial speed is 9600. */
	mcs->speed = 9600;
	mcs->new_speed = 0;		/* new_speed is set to 0 */
	rval &= ~MCS_PLLPWDN;		/* disable power down. */

	/* make sure device determines direction and that the auto send sip
	 * pulse are on.
	 */
	rval |= MCS_DTD | MCS_SIPEN;

	ret = FUNC3(mcs, MCS_MODE_REG, rval);
	if(FUNC7(ret))
		goto error;

	msg = "transceiver model specific setup error.";
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
		FUNC1("Unknown transceiver type: %d\n",
			     mcs->transceiver_type);
		ret = 1;
	}
	if (FUNC7(ret))
		goto error;

	/* If transceiver is not SHARP, then if receive mode set
	* on the RXFAST bit in the XCVR Register otherwise unset it
	*/
	if (mcs->transceiver_type != MCS_TSC_SHARP) {

		ret = FUNC2(mcs, MCS_XCVR_REG, &rval);
		if (FUNC7(ret != 2))
			goto error;
		if (mcs->receive_mode)
			rval |= MCS_RXFAST;
		else
			rval &= ~MCS_RXFAST;
		ret = FUNC3(mcs, MCS_XCVR_REG, rval);
		if (FUNC7(ret))
			goto error;
	}

	msg = "transceiver reset.";

	ret = FUNC2(mcs, MCS_MODE_REG, &rval);
	if (FUNC7(ret != 2))
		goto error;

	/* reset the mcs7780 so all changes take effect. */
	rval &= ~MCS_RESET;
	ret = FUNC3(mcs, MCS_MODE_REG, rval);
	if (FUNC7(ret))
		goto error;
	else
		return ret;

error:
	FUNC0("%s\n", msg);
	return ret;
}