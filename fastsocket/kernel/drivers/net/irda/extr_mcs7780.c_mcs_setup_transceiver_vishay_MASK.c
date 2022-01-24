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
struct mcs_cb {int dummy; } ;
typedef  int __u16 ;

/* Variables and functions */
 int EIO ; 
 int MCS_MODE0 ; 
 int MCS_MODE1 ; 
 int MCS_STFIR ; 
 int MCS_XCVR_CONF ; 
 int /*<<< orphan*/  MCS_XCVR_REG ; 
 int FUNC0 (struct mcs_cb*,int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (struct mcs_cb*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static inline int FUNC3(struct mcs_cb *mcs)
{
	int ret = 0;
	__u16 rval;

	/* mcs_get_reg should read exactly two bytes from the dongle */
	ret = FUNC0(mcs, MCS_XCVR_REG, &rval);
	if (FUNC2(ret != 2)) {
		ret = -EIO;
		goto error;
	}

	/* The MCS_XCVR_CONF bit puts the transceiver into configuration
	 * mode.  The MCS_MODE0 bit must start out high (1) and then
	 * transition to low and the MCS_STFIR and MCS_MODE1 bits must
	 * be low.
	 */
	rval |= (MCS_MODE0 | MCS_XCVR_CONF);
	rval &= ~MCS_STFIR;
	rval &= ~MCS_MODE1;
	ret = FUNC1(mcs, MCS_XCVR_REG, rval);
	if (FUNC2(ret))
		goto error;

	rval &= ~MCS_MODE0;
	ret = FUNC1(mcs, MCS_XCVR_REG, rval);
	if (FUNC2(ret))
		goto error;

	rval &= ~MCS_XCVR_CONF;
	ret = FUNC1(mcs, MCS_XCVR_REG, rval);
	if (FUNC2(ret))
		goto error;

	ret = 0;
	error:
		return ret;
}