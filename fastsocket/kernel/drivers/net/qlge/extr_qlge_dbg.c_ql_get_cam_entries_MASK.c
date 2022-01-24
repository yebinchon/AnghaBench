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
typedef  void* u32 ;
struct ql_adapter {int /*<<< orphan*/  ndev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAC_ADDR_TYPE_CAM_MAC ; 
 int /*<<< orphan*/  MAC_ADDR_TYPE_MULTI_MAC ; 
 int /*<<< orphan*/  SEM_MAC_ADDR_MASK ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC0 (struct ql_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct ql_adapter*,int /*<<< orphan*/ ,int,void**) ; 
 int FUNC2 (struct ql_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ql_adapter*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ql_adapter *qdev, u32 *buf)
{
	int i, status;
	u32 value[3];

	status = FUNC2(qdev, SEM_MAC_ADDR_MASK);
	if (status)
		return status;

	for (i = 0; i < 16; i++) {
		status = FUNC1(qdev,
					MAC_ADDR_TYPE_CAM_MAC, i, value);
		if (status) {
			FUNC0(qdev, drv, qdev->ndev,
				  "Failed read of mac index register.\n");
			goto err;
		}
		*buf++ = value[0];	/* lower MAC address */
		*buf++ = value[1];	/* upper MAC address */
		*buf++ = value[2];	/* output */
	}
	for (i = 0; i < 32; i++) {
		status = FUNC1(qdev,
					MAC_ADDR_TYPE_MULTI_MAC, i, value);
		if (status) {
			FUNC0(qdev, drv, qdev->ndev,
				  "Failed read of mac index register.\n");
			goto err;
		}
		*buf++ = value[0];	/* lower Mcast address */
		*buf++ = value[1];	/* upper Mcast address */
	}
err:
	FUNC3(qdev, SEM_MAC_ADDR_MASK);
	return status;
}