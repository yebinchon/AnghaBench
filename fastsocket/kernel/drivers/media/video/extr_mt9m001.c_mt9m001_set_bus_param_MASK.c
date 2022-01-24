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
struct soc_camera_link {int (* set_bus_param ) (struct soc_camera_link*,unsigned long) ;} ;
struct soc_camera_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned long SOCAM_DATAWIDTH_10 ; 
 unsigned long SOCAM_DATAWIDTH_MASK ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int FUNC1 (struct soc_camera_link*,unsigned long) ; 
 struct soc_camera_link* FUNC2 (struct soc_camera_device*) ; 

__attribute__((used)) static int FUNC3(struct soc_camera_device *icd,
				 unsigned long flags)
{
	struct soc_camera_link *icl = FUNC2(icd);
	unsigned long width_flag = flags & SOCAM_DATAWIDTH_MASK;

	/* Only one width bit may be set */
	if (!FUNC0(width_flag))
		return -EINVAL;

	if (icl->set_bus_param)
		return icl->set_bus_param(icl, width_flag);

	/*
	 * Without board specific bus width settings we only support the
	 * sensors native bus width
	 */
	if (width_flag == SOCAM_DATAWIDTH_10)
		return 0;

	return -EINVAL;
}