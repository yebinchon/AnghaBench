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
typedef  scalar_t__ u32 ;
struct tg3 {int pci_fn; } ;

/* Variables and functions */
 scalar_t__ APE_LOCK_REQ_DRIVER ; 
 scalar_t__ ASIC_REV_5761 ; 
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  ENABLE_APE ; 
#define  TG3_APE_LOCK_GPIO 134 
 scalar_t__ TG3_APE_LOCK_GRANT ; 
#define  TG3_APE_LOCK_GRC 133 
#define  TG3_APE_LOCK_MEM 132 
#define  TG3_APE_LOCK_PHY0 131 
#define  TG3_APE_LOCK_PHY1 130 
#define  TG3_APE_LOCK_PHY2 129 
#define  TG3_APE_LOCK_PHY3 128 
 scalar_t__ TG3_APE_LOCK_REQ ; 
 scalar_t__ TG3_APE_PER_LOCK_GRANT ; 
 scalar_t__ TG3_APE_PER_LOCK_REQ ; 
 scalar_t__ FUNC0 (struct tg3*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct tg3*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (struct tg3*) ; 
 int /*<<< orphan*/  FUNC3 (struct tg3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct tg3 *tp, int locknum)
{
	int i, off;
	int ret = 0;
	u32 status, req, gnt, bit;

	if (!FUNC3(tp, ENABLE_APE))
		return 0;

	switch (locknum) {
	case TG3_APE_LOCK_GPIO:
		if (FUNC2(tp) == ASIC_REV_5761)
			return 0;
	case TG3_APE_LOCK_GRC:
	case TG3_APE_LOCK_MEM:
		if (!tp->pci_fn)
			bit = APE_LOCK_REQ_DRIVER;
		else
			bit = 1 << tp->pci_fn;
		break;
	case TG3_APE_LOCK_PHY0:
	case TG3_APE_LOCK_PHY1:
	case TG3_APE_LOCK_PHY2:
	case TG3_APE_LOCK_PHY3:
		bit = APE_LOCK_REQ_DRIVER;
		break;
	default:
		return -EINVAL;
	}

	if (FUNC2(tp) == ASIC_REV_5761) {
		req = TG3_APE_LOCK_REQ;
		gnt = TG3_APE_LOCK_GRANT;
	} else {
		req = TG3_APE_PER_LOCK_REQ;
		gnt = TG3_APE_PER_LOCK_GRANT;
	}

	off = 4 * locknum;

	FUNC1(tp, req + off, bit);

	/* Wait for up to 1 millisecond to acquire lock. */
	for (i = 0; i < 100; i++) {
		status = FUNC0(tp, gnt + off);
		if (status == bit)
			break;
		FUNC4(10);
	}

	if (status != bit) {
		/* Revoke the lock request. */
		FUNC1(tp, gnt + off, bit);
		ret = -EBUSY;
	}

	return ret;
}