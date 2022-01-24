#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pvr2_sysfs_class {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  check_func; } ;
struct pvr2_sysfs {TYPE_1__ channel; } ;
struct pvr2_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PVR2_TRACE_STRUCT ; 
 int /*<<< orphan*/  FUNC0 (struct pvr2_sysfs*,struct pvr2_sysfs_class*) ; 
 struct pvr2_sysfs* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct pvr2_context*) ; 
 int /*<<< orphan*/  pvr2_sysfs_internal_check ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,struct pvr2_sysfs*) ; 

struct pvr2_sysfs *FUNC4(struct pvr2_context *mp,
				     struct pvr2_sysfs_class *class_ptr)
{
	struct pvr2_sysfs *sfp;
	sfp = FUNC1(sizeof(*sfp),GFP_KERNEL);
	if (!sfp) return sfp;
	FUNC3(PVR2_TRACE_STRUCT,"Creating pvr2_sysfs id=%p",sfp);
	FUNC2(&sfp->channel,mp);
	sfp->channel.check_func = pvr2_sysfs_internal_check;

	FUNC0(sfp,class_ptr);
	return sfp;
}