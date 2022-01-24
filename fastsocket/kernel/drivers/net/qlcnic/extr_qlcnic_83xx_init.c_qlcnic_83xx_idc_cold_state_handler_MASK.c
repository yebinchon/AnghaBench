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
 scalar_t__ FUNC0 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qlcnic_adapter*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct qlcnic_adapter*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ qlcnic_load_fw_file ; 

__attribute__((used)) static int FUNC6(struct qlcnic_adapter *adapter)
{
	FUNC5(adapter, 1, 0);
	FUNC4(adapter, 1, 0);

	if (qlcnic_load_fw_file) {
		FUNC3(adapter, 0);
	} else {
		if (FUNC0(adapter)) {
			FUNC1(adapter, 0);
			return -EIO;
		} else {
			FUNC2(adapter, 0);
		}
	}
	return 0;
}