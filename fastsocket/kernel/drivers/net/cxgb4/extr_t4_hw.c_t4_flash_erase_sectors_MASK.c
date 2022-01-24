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
struct adapter {int /*<<< orphan*/  pdev_dev; } ;

/* Variables and functions */
 int SF_ERASE_SECTOR ; 
 int /*<<< orphan*/  SF_OP ; 
 int SF_WR_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC1 (struct adapter*,int,int) ; 
 int FUNC2 (struct adapter*,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct adapter *adapter, int start, int end)
{
	int ret = 0;

	while (start <= end) {
		if ((ret = FUNC2(adapter, 1, 0, 1, SF_WR_ENABLE)) != 0 ||
		    (ret = FUNC2(adapter, 4, 0, 1,
				     SF_ERASE_SECTOR | (start << 8))) != 0 ||
		    (ret = FUNC1(adapter, 14, 500)) != 0) {
			FUNC0(adapter->pdev_dev,
				"erase of flash sector %d failed, error %d\n",
				start, ret);
			break;
		}
		start++;
	}
	FUNC3(adapter, SF_OP, 0);    /* unlock SF */
	return ret;
}