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
typedef  int u32 ;
struct qlcnic_adapter {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  QLC_83XX_MINIDUMP_FLASH ; 
 scalar_t__ FUNC0 (struct qlcnic_adapter*) ; 
 scalar_t__ FUNC1 (struct qlcnic_adapter*) ; 
 int FUNC2 (struct qlcnic_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct qlcnic_adapter*) ; 

__attribute__((used)) static int FUNC4(struct qlcnic_adapter *adapter,
					     u8 *buffer, u32 size)
{
	int ret = 0;

	if (FUNC0(adapter))
		return -EIO;

	if (FUNC1(adapter))
		return -EIO;

	ret = FUNC2(adapter,
						QLC_83XX_MINIDUMP_FLASH,
						buffer, size / sizeof(u32));

	FUNC3(adapter);

	return ret;
}