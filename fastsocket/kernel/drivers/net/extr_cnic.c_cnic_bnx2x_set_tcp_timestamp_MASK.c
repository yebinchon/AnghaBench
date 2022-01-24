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
typedef  int /*<<< orphan*/  u16 ;
struct cnic_local {int /*<<< orphan*/  pfid; } ;
struct cnic_dev {int /*<<< orphan*/  netdev; struct cnic_local* cnic_priv; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 scalar_t__ BAR_TSTRORM_INTMEM ; 
 scalar_t__ BAR_XSTRORM_INTMEM ; 
 int /*<<< orphan*/  FUNC0 (struct cnic_dev*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cnic_dev*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TSTORM_L5CM_TCP_FLAGS_TS_ENABLED ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XSTORM_L5CM_TCP_FLAGS_TS_ENABLED ; 
 int /*<<< orphan*/  XSTORM_L5CM_TCP_FLAGS_WND_SCL_EN ; 
 struct bnx2x* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct cnic_dev *dev, int tcp_ts)
{
	struct cnic_local *cp = dev->cnic_priv;
	struct bnx2x *bp = FUNC4(dev->netdev);
	u8 xstorm_flags = XSTORM_L5CM_TCP_FLAGS_WND_SCL_EN;
	u16 tstorm_flags = 0;

	if (tcp_ts) {
		xstorm_flags |= XSTORM_L5CM_TCP_FLAGS_TS_ENABLED;
		tstorm_flags |= TSTORM_L5CM_TCP_FLAGS_TS_ENABLED;
	}

	FUNC1(dev, BAR_XSTRORM_INTMEM +
		 FUNC3(cp->pfid), xstorm_flags);

	FUNC0(dev, BAR_TSTRORM_INTMEM +
		  FUNC2(cp->pfid), tstorm_flags);
}