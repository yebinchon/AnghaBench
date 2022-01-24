#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct qla_hw_data {int dummy; } ;
struct TYPE_7__ {struct qla_hw_data* hw; } ;
typedef  TYPE_1__ scsi_qla_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct qla_hw_data*) ; 
 int QLA_SUCCESS ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

int
FUNC8(scsi_qla_host_t *vha)
{
	int ret;
	uint32_t flt_addr;
	struct qla_hw_data *ha = vha->hw;

	if (!FUNC2(ha) && !FUNC3(ha) &&
	    !FUNC0(ha) && !FUNC1(ha))
		return QLA_SUCCESS;

	ret = FUNC4(vha, &flt_addr);
	if (ret != QLA_SUCCESS)
		return ret;

	FUNC6(vha, flt_addr);
	FUNC5(vha);
	FUNC7(vha);

	return QLA_SUCCESS;
}