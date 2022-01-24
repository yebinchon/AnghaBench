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
typedef  int /*<<< orphan*/  u32 ;
struct cnic_local {int /*<<< orphan*/  pfid; } ;
struct cnic_dev {int /*<<< orphan*/ * mac_addr; int /*<<< orphan*/  netdev; struct cnic_local* cnic_priv; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 scalar_t__ BAR_TSTRORM_INTMEM ; 
 scalar_t__ BAR_XSTRORM_INTMEM ; 
 int /*<<< orphan*/  FUNC0 (struct cnic_dev*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 struct bnx2x* FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct cnic_dev *dev)
{
	struct cnic_local *cp = dev->cnic_priv;
	struct bnx2x *bp = FUNC10(dev->netdev);
	u32 pfid = cp->pfid;
	u8 *mac = dev->mac_addr;

	FUNC0(dev, BAR_XSTRORM_INTMEM +
		 FUNC4(pfid), mac[0]);
	FUNC0(dev, BAR_XSTRORM_INTMEM +
		 FUNC5(pfid), mac[1]);
	FUNC0(dev, BAR_XSTRORM_INTMEM +
		 FUNC6(pfid), mac[2]);
	FUNC0(dev, BAR_XSTRORM_INTMEM +
		 FUNC7(pfid), mac[3]);
	FUNC0(dev, BAR_XSTRORM_INTMEM +
		 FUNC8(pfid), mac[4]);
	FUNC0(dev, BAR_XSTRORM_INTMEM +
		 FUNC9(pfid), mac[5]);

	FUNC0(dev, BAR_TSTRORM_INTMEM +
		 FUNC1(pfid), mac[5]);
	FUNC0(dev, BAR_TSTRORM_INTMEM +
		 FUNC1(pfid) + 1,
		 mac[4]);
	FUNC0(dev, BAR_TSTRORM_INTMEM +
		 FUNC2(pfid), mac[3]);
	FUNC0(dev, BAR_TSTRORM_INTMEM +
		 FUNC2(pfid) + 1,
		 mac[2]);
	FUNC0(dev, BAR_TSTRORM_INTMEM +
		 FUNC3(pfid), mac[1]);
	FUNC0(dev, BAR_TSTRORM_INTMEM +
		 FUNC3(pfid) + 1,
		 mac[0]);
}