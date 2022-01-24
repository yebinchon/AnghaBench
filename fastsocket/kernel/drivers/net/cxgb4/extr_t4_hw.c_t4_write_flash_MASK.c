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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {unsigned int sf_size; } ;
struct adapter {int /*<<< orphan*/  pdev_dev; TYPE_1__ params; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  SF_OP ; 
 unsigned int SF_PAGE_SIZE ; 
 unsigned int SF_PROG_PAGE ; 
 unsigned int SF_WR_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int FUNC2 (struct adapter*,int,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,unsigned int) ; 
 unsigned int FUNC4 (unsigned int,unsigned int) ; 
 int FUNC5 (struct adapter*,unsigned int,int,int,unsigned int) ; 
 unsigned int FUNC6 (unsigned int) ; 
 int FUNC7 (struct adapter*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct adapter *adapter, unsigned int addr,
			  unsigned int n, const u8 *data)
{
	int ret;
	u32 buf[64];
	unsigned int i, c, left, val, offset = addr & 0xff;

	if (addr >= adapter->params.sf_size || offset + n > SF_PAGE_SIZE)
		return -EINVAL;

	val = FUNC6(addr) | SF_PROG_PAGE;

	if ((ret = FUNC5(adapter, 1, 0, 1, SF_WR_ENABLE)) != 0 ||
	    (ret = FUNC5(adapter, 4, 1, 1, val)) != 0)
		goto unlock;

	for (left = n; left; left -= c) {
		c = FUNC4(left, 4U);
		for (val = 0, i = 0; i < c; ++i)
			val = (val << 8) + *data++;

		ret = FUNC5(adapter, c, c != left, 1, val);
		if (ret)
			goto unlock;
	}
	ret = FUNC2(adapter, 8, 1);
	if (ret)
		goto unlock;

	FUNC8(adapter, SF_OP, 0);    /* unlock SF */

	/* Read the page to verify the write succeeded */
	ret = FUNC7(adapter, addr & ~0xff, FUNC0(buf), buf, 1);
	if (ret)
		return ret;

	if (FUNC3(data - n, (u8 *)buf + offset, n)) {
		FUNC1(adapter->pdev_dev,
			"failed to correctly write the flash page at %#x\n",
			addr);
		return -EIO;
	}
	return 0;

unlock:
	FUNC8(adapter, SF_OP, 0);    /* unlock SF */
	return ret;
}