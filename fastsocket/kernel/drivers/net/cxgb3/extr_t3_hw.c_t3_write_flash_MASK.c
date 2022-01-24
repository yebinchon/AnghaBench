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
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int EINVAL ; 
 int EIO ; 
 unsigned int SF_PROG_PAGE ; 
 unsigned int SF_SIZE ; 
 unsigned int SF_WR_ENABLE ; 
 int FUNC1 (struct adapter*,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,unsigned int) ; 
 unsigned int FUNC3 (unsigned int,unsigned int) ; 
 int FUNC4 (struct adapter*,unsigned int,int,unsigned int) ; 
 unsigned int FUNC5 (unsigned int) ; 
 int FUNC6 (struct adapter*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7(struct adapter *adapter, unsigned int addr,
			  unsigned int n, const u8 *data)
{
	int ret;
	u32 buf[64];
	unsigned int i, c, left, val, offset = addr & 0xff;

	if (addr + n > SF_SIZE || offset + n > 256)
		return -EINVAL;

	val = FUNC5(addr) | SF_PROG_PAGE;

	if ((ret = FUNC4(adapter, 1, 0, SF_WR_ENABLE)) != 0 ||
	    (ret = FUNC4(adapter, 4, 1, val)) != 0)
		return ret;

	for (left = n; left; left -= c) {
		c = FUNC3(left, 4U);
		for (val = 0, i = 0; i < c; ++i)
			val = (val << 8) + *data++;

		ret = FUNC4(adapter, c, c != left, val);
		if (ret)
			return ret;
	}
	if ((ret = FUNC1(adapter, 5, 1)) != 0)
		return ret;

	/* Read the page to verify the write succeeded */
	ret = FUNC6(adapter, addr & ~0xff, FUNC0(buf), buf, 1);
	if (ret)
		return ret;

	if (FUNC2(data - n, (u8 *) buf + offset, n))
		return -EIO;
	return 0;
}