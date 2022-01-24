#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_5__ {TYPE_1__* hw; } ;
typedef  TYPE_2__ scsi_qla_host_t ;
struct TYPE_4__ {scalar_t__ zio_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ERANGE ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*,char*,int*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

__attribute__((used)) static ssize_t
FUNC4(struct device *dev, struct device_attribute *attr,
			const char *buf, size_t count)
{
	scsi_qla_host_t *vha = FUNC1(FUNC0(dev));
	int val = 0;
	uint16_t zio_timer;

	if (FUNC2(buf, "%d", &val) != 1)
		return -EINVAL;
	if (val > 25500 || val < 100)
		return -ERANGE;

	zio_timer = (uint16_t)(val / 100);
	vha->hw->zio_timer = zio_timer;

	return FUNC3(buf);
}