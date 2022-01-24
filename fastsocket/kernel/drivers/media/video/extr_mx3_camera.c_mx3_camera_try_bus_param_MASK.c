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
struct soc_camera_host {struct mx3_camera_dev* priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct soc_camera_device {TYPE_2__ dev; TYPE_1__* ops; } ;
struct mx3_camera_dev {int dummy; } ;
struct TYPE_3__ {unsigned long (* query_bus_param ) (struct soc_camera_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int const,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned long,unsigned long) ; 
 int FUNC2 (unsigned long,unsigned long) ; 
 unsigned long FUNC3 (struct soc_camera_device*) ; 
 int FUNC4 (struct mx3_camera_dev*,unsigned int const,unsigned long*) ; 
 struct soc_camera_host* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct soc_camera_device *icd,
				    const unsigned int depth)
{
	struct soc_camera_host *ici = FUNC5(icd->dev.parent);
	struct mx3_camera_dev *mx3_cam = ici->priv;
	unsigned long bus_flags, camera_flags;
	int ret = FUNC4(mx3_cam, depth, &bus_flags);

	FUNC0(icd->dev.parent, "request bus width %d bit: %d\n", depth, ret);

	if (ret < 0)
		return ret;

	camera_flags = icd->ops->query_bus_param(icd);

	ret = FUNC2(camera_flags, bus_flags);
	if (ret < 0)
		FUNC1(icd->dev.parent,
			 "Flags incompatible: camera %lx, host %lx\n",
			 camera_flags, bus_flags);

	return ret;
}