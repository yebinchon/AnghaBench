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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {unsigned int sf_size; } ;
struct adapter {TYPE_1__ params; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SF_OP ; 
 unsigned int SF_RD_DATA_FAST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct adapter*,int,int,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct adapter*,int,int,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct adapter *adapter, unsigned int addr,
			 unsigned int nwords, u32 *data, int byte_oriented)
{
	int ret;

	if (addr + nwords * sizeof(u32) > adapter->params.sf_size || (addr & 3))
		return -EINVAL;

	addr = FUNC3(addr) | SF_RD_DATA_FAST;

	if ((ret = FUNC2(adapter, 4, 1, 0, addr)) != 0 ||
	    (ret = FUNC1(adapter, 1, 1, 0, data)) != 0)
		return ret;

	for ( ; nwords; nwords--, data++) {
		ret = FUNC1(adapter, 4, nwords > 1, nwords == 1, data);
		if (nwords == 1)
			FUNC4(adapter, SF_OP, 0);    /* unlock SF */
		if (ret)
			return ret;
		if (byte_oriented)
			*data = FUNC0(*data);
	}
	return 0;
}