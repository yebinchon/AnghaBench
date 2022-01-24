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
typedef  scalar_t__ u32 ;
struct vio_dev {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 scalar_t__ FIRST_VIODASD ; 
 struct device_node* FUNC0 (struct device_node*,char*,scalar_t__,scalar_t__,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*) ; 
 struct device_node* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 struct vio_dev* FUNC4 (struct device_node*) ; 

struct vio_dev *FUNC5(u32 unit)
{
	struct device_node *vio_root;
	struct device_node *np;
	struct vio_dev *vdev = NULL;

	vio_root = FUNC2("/vdevice");
	if (!vio_root)
		return NULL;
	np = FUNC0(vio_root, "viodasd", FIRST_VIODASD + unit, unit,
			"block", "IBM,iSeries-viodasd", NULL);
	FUNC3(vio_root);
	if (np) {
		vdev = FUNC4(np);
		if (!vdev)
			FUNC1(np);
	}
	return vdev;
}