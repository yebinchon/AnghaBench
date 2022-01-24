#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct soc_camera_host {struct sh_mobile_ceu_dev* priv; } ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct soc_camera_device {TYPE_2__* ops; TYPE_1__ dev; } ;
struct sh_mobile_ceu_dev {int dummy; } ;
struct TYPE_4__ {unsigned long (* query_bus_param ) (struct soc_camera_device*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct sh_mobile_ceu_dev*) ; 
 unsigned long FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (struct soc_camera_device*) ; 
 struct soc_camera_host* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct soc_camera_device *icd)
{
	struct soc_camera_host *ici = FUNC3(icd->dev.parent);
	struct sh_mobile_ceu_dev *pcdev = ici->priv;
	unsigned long camera_flags, common_flags;

	camera_flags = icd->ops->query_bus_param(icd);
	common_flags = FUNC1(camera_flags,
						       FUNC0(pcdev));
	if (!common_flags)
		return -EINVAL;

	return 0;
}