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
typedef  scalar_t__ u8 ;
typedef  int u64 ;
typedef  int u32 ;
struct __vxge_hw_vpath_handle {int dummy; } ;
typedef  enum vxge_hw_status { ____Placeholder_vxge_hw_status } vxge_hw_status ;

/* Variables and functions */
 int ETH_ALEN ; 
 int VXGE_HW_ERR_INVALID_HANDLE ; 
 int VXGE_HW_OK ; 
 int /*<<< orphan*/  VXGE_HW_RTS_ACCESS_STEER_CTRL_ACTION_LIST_FIRST_ENTRY ; 
 int /*<<< orphan*/  VXGE_HW_RTS_ACCESS_STEER_CTRL_DATA_STRUCT_SEL_DA ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (struct __vxge_hw_vpath_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 

enum vxge_hw_status
FUNC3(
	struct __vxge_hw_vpath_handle *vp,
	u8 (macaddr)[ETH_ALEN],
	u8 (macaddr_mask)[ETH_ALEN])
{
	u32 i;
	u64 data1 = 0ULL;
	u64 data2 = 0ULL;
	enum vxge_hw_status status = VXGE_HW_OK;

	if (vp == NULL) {
		status = VXGE_HW_ERR_INVALID_HANDLE;
		goto exit;
	}

	status = FUNC2(vp,
			VXGE_HW_RTS_ACCESS_STEER_CTRL_ACTION_LIST_FIRST_ENTRY,
			VXGE_HW_RTS_ACCESS_STEER_CTRL_DATA_STRUCT_SEL_DA,
			0, &data1, &data2);

	if (status != VXGE_HW_OK)
		goto exit;

	data1 = FUNC0(data1);

	data2 = FUNC1(data2);

	for (i = ETH_ALEN; i > 0; i--) {
		macaddr[i-1] = (u8)(data1 & 0xFF);
		data1 >>= 8;

		macaddr_mask[i-1] = (u8)(data2 & 0xFF);
		data2 >>= 8;
	}
exit:
	return status;
}