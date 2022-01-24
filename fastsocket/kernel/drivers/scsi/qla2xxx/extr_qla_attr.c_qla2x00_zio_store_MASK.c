#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
struct qla_hw_data {scalar_t__ zio_mode; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_3__ {int /*<<< orphan*/  dpc_flags; struct qla_hw_data* hw; } ;
typedef  TYPE_1__ scsi_qla_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOTSUPP ; 
 int /*<<< orphan*/  ISP_ABORT_NEEDED ; 
 int /*<<< orphan*/  FUNC0 (struct qla_hw_data*) ; 
 scalar_t__ QLA_ZIO_DISABLED ; 
 scalar_t__ QLA_ZIO_MODE_6 ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (char const*,char*,int*) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

__attribute__((used)) static ssize_t
FUNC6(struct device *dev, struct device_attribute *attr,
		  const char *buf, size_t count)
{
	scsi_qla_host_t *vha = FUNC3(FUNC1(dev));
	struct qla_hw_data *ha = vha->hw;
	int val = 0;
	uint16_t zio_mode;

	if (!FUNC0(ha))
		return -ENOTSUPP;

	if (FUNC4(buf, "%d", &val) != 1)
		return -EINVAL;

	if (val)
		zio_mode = QLA_ZIO_MODE_6;
	else
		zio_mode = QLA_ZIO_DISABLED;

	/* Update per-hba values and queue a reset. */
	if (zio_mode != QLA_ZIO_DISABLED || ha->zio_mode != QLA_ZIO_DISABLED) {
		ha->zio_mode = zio_mode;
		FUNC2(ISP_ABORT_NEEDED, &vha->dpc_flags);
	}
	return FUNC5(buf);
}