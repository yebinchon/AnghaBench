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
struct mvs_info {int dummy; } ;
struct mvs_device {scalar_t__ runing_req; scalar_t__ taskfileset; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* free_reg_set ) (struct mvs_info*,scalar_t__*) ;} ;

/* Variables and functions */
 TYPE_1__* MVS_CHIP_DISP ; 
 scalar_t__ MVS_ID_NOT_MAPPED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mvs_info*,scalar_t__*) ; 

__attribute__((used)) static inline void FUNC2(struct mvs_info *mvi,
				struct mvs_device *dev)
{
	if (!dev) {
		FUNC0("device has been free.\n");
		return;
	}
	if (dev->runing_req != 0)
		return;
	if (dev->taskfileset == MVS_ID_NOT_MAPPED)
		return;
	MVS_CHIP_DISP->free_reg_set(mvi, &dev->taskfileset);
}