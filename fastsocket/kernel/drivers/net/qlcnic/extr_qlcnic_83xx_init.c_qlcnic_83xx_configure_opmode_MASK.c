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
struct qlcnic_adapter {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int QLC_83XX_DEFAULT_MODE ; 
 int QLC_83XX_VIRTUAL_NIC_MODE ; 
 scalar_t__ FUNC0 (struct qlcnic_adapter*) ; 
 scalar_t__ FUNC1 (struct qlcnic_adapter*) ; 
 int FUNC2 (struct qlcnic_adapter*) ; 

int FUNC3(struct qlcnic_adapter *adapter)
{
	int ret;

	ret = FUNC2(adapter);
	if (ret == -EIO)
		return -EIO;

	if (ret == QLC_83XX_VIRTUAL_NIC_MODE) {
		if (FUNC1(adapter))
			return -EIO;
	} else if (ret == QLC_83XX_DEFAULT_MODE) {
		if (FUNC0(adapter))
			return -EIO;
	}

	return 0;
}