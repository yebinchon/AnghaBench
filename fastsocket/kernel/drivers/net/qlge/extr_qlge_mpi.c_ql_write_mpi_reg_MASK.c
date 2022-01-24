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
typedef  int /*<<< orphan*/  u32 ;
struct ql_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PROC_ADDR ; 
 int /*<<< orphan*/  PROC_ADDR_ERR ; 
 int /*<<< orphan*/  PROC_ADDR_RDY ; 
 int /*<<< orphan*/  PROC_DATA ; 
 int FUNC0 (struct ql_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ql_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct ql_adapter *qdev, u32 reg, u32 data)
{
	int status = 0;
	/* wait for reg to come ready */
	status = FUNC0(qdev, PROC_ADDR, PROC_ADDR_RDY, PROC_ADDR_ERR);
	if (status)
		goto exit;
	/* write the data to the data reg */
	FUNC1(qdev, PROC_DATA, data);
	/* trigger the write */
	FUNC1(qdev, PROC_ADDR, reg);
	/* wait for reg to come ready */
	status = FUNC0(qdev, PROC_ADDR, PROC_ADDR_RDY, PROC_ADDR_ERR);
	if (status)
		goto exit;
exit:
	return status;
}