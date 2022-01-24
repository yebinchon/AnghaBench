#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_4__ {int data_type1; int /*<<< orphan*/ * mac_addr; int /*<<< orphan*/ * mac_addr1; } ;
struct TYPE_5__ {TYPE_1__ flash_params_8000; } ;
struct ql_adapter {TYPE_3__* ndev; TYPE_2__ flash; int /*<<< orphan*/  port; } ;
struct flash_params_8000 {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_6__ {int /*<<< orphan*/  addr_len; int /*<<< orphan*/ * dev_addr; } ;

/* Variables and functions */
 int EINVAL ; 
 int ETIMEDOUT ; 
 int FUNC0_FLASH_OFFSET ; 
 int FUNC1_FLASH_OFFSET ; 
 int /*<<< orphan*/  SEM_FLASH_MASK ; 
 int /*<<< orphan*/  ifup ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ql_adapter*,int /*<<< orphan*/ ,TYPE_3__*,char*) ; 
 int FUNC3 (struct ql_adapter*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct ql_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ql_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ql_adapter*,int,char*) ; 

__attribute__((used)) static int FUNC7(struct ql_adapter *qdev)
{
	u32 i, size;
	int status;
	__le32 *p = (__le32 *)&qdev->flash;
	u32 offset;
	u8 mac_addr[6];

	/* Get flash offset for function and adjust
	 * for dword access.
	 */
	if (!qdev->port)
		offset = FUNC0_FLASH_OFFSET / sizeof(u32);
	else
		offset = FUNC1_FLASH_OFFSET / sizeof(u32);

	if (FUNC4(qdev, SEM_FLASH_MASK))
		return -ETIMEDOUT;

	size = sizeof(struct flash_params_8000) / sizeof(u32);
	for (i = 0; i < size; i++, p++) {
		status = FUNC3(qdev, i+offset, p);
		if (status) {
			FUNC2(qdev, ifup, qdev->ndev,
				  "Error reading flash.\n");
			goto exit;
		}
	}

	status = FUNC6(qdev,
			sizeof(struct flash_params_8000) / sizeof(u16),
			"8000");
	if (status) {
		FUNC2(qdev, ifup, qdev->ndev, "Invalid flash.\n");
		status = -EINVAL;
		goto exit;
	}

	/* Extract either manufacturer or BOFM modified
	 * MAC address.
	 */
	if (qdev->flash.flash_params_8000.data_type1 == 2)
		FUNC1(mac_addr,
			qdev->flash.flash_params_8000.mac_addr1,
			qdev->ndev->addr_len);
	else
		FUNC1(mac_addr,
			qdev->flash.flash_params_8000.mac_addr,
			qdev->ndev->addr_len);

	if (!FUNC0(mac_addr)) {
		FUNC2(qdev, ifup, qdev->ndev, "Invalid MAC address.\n");
		status = -EINVAL;
		goto exit;
	}

	FUNC1(qdev->ndev->dev_addr,
		mac_addr,
		qdev->ndev->addr_len);

exit:
	FUNC5(qdev, SEM_FLASH_MASK);
	return status;
}