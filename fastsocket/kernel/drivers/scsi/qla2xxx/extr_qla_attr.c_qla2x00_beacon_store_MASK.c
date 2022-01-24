#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct qla_hw_data {TYPE_1__* isp_ops; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_8__ {int /*<<< orphan*/  dpc_flags; struct qla_hw_data* hw; } ;
typedef  TYPE_2__ scsi_qla_host_t ;
struct TYPE_7__ {int (* beacon_on ) (TYPE_2__*) ;int (* beacon_off ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ABORT_ISP_ACTIVE ; 
 size_t EBUSY ; 
 size_t EINVAL ; 
 size_t EPERM ; 
 scalar_t__ FUNC0 (struct qla_hw_data*) ; 
 scalar_t__ FUNC1 (struct qla_hw_data*) ; 
 int QLA_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*,int,char*) ; 
 int /*<<< orphan*/  ql_log_warn ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (char const*,char*,int*) ; 
 int FUNC6 (TYPE_2__*) ; 
 int FUNC7 (TYPE_2__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t
FUNC9(struct device *dev, struct device_attribute *attr,
		     const char *buf, size_t count)
{
	scsi_qla_host_t *vha = FUNC4(FUNC2(dev));
	struct qla_hw_data *ha = vha->hw;
	int val = 0;
	int rval;

	if (FUNC0(ha) || FUNC1(ha))
		return -EPERM;

	if (FUNC8(ABORT_ISP_ACTIVE, &vha->dpc_flags)) {
		FUNC3(ql_log_warn, vha, 0x707a,
		    "Abort ISP active -- ignoring beacon request.\n");
		return -EBUSY;
	}

	if (FUNC5(buf, "%d", &val) != 1)
		return -EINVAL;

	if (val)
		rval = ha->isp_ops->beacon_on(vha);
	else
		rval = ha->isp_ops->beacon_off(vha);

	if (rval != QLA_SUCCESS)
		count = 0;

	return count;
}