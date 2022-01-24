#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct pvr2_ctrl {TYPE_5__* hdw; TYPE_4__* info; } ;
struct TYPE_10__ {int /*<<< orphan*/  big_lock; } ;
struct TYPE_7__ {int /*<<< orphan*/  valid_bits; int /*<<< orphan*/  bit_names; } ;
struct TYPE_6__ {int /*<<< orphan*/  count; int /*<<< orphan*/ * value_names; } ;
struct TYPE_8__ {TYPE_2__ type_bitmask; TYPE_1__ type_enum; } ;
struct TYPE_9__ {scalar_t__ type; TYPE_3__ def; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * boolNames ; 
 int FUNC3 (char const*,unsigned int,int*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (char const*,unsigned int,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ pvr2_ctl_bitmask ; 
 scalar_t__ pvr2_ctl_bool ; 
 scalar_t__ pvr2_ctl_enum ; 
 scalar_t__ pvr2_ctl_int ; 
 int FUNC5 (struct pvr2_ctrl*,int) ; 

int FUNC6(struct pvr2_ctrl *cptr,
			   const char *ptr,unsigned int len,
			   int *maskptr,int *valptr)
{
	int ret = -EINVAL;
	unsigned int cnt;

	*maskptr = 0;
	*valptr = 0;

	cnt = 0;
	while ((cnt < len) && ((ptr[cnt] <= 32) || (ptr[cnt] >= 127))) cnt++;
	len -= cnt; ptr += cnt;
	cnt = 0;
	while ((cnt < len) && ((ptr[len-(cnt+1)] <= 32) ||
			       (ptr[len-(cnt+1)] >= 127))) cnt++;
	len -= cnt;

	if (!len) return -EINVAL;

	FUNC2(cptr->hdw->big_lock); do {
		if (cptr->info->type == pvr2_ctl_int) {
			ret = FUNC4(ptr,len,valptr,NULL,0);
			if (ret >= 0) {
				ret = FUNC5(cptr,*valptr);
			}
			*maskptr = ~0;
		} else if (cptr->info->type == pvr2_ctl_bool) {
			ret = FUNC4(ptr,len,valptr,boolNames,
					  FUNC0(boolNames));
			if (ret == 1) {
				*valptr = *valptr ? !0 : 0;
			} else if (ret == 0) {
				*valptr = (*valptr & 1) ? !0 : 0;
			}
			*maskptr = 1;
		} else if (cptr->info->type == pvr2_ctl_enum) {
			ret = FUNC4(
				ptr,len,valptr,
				cptr->info->def.type_enum.value_names,
				cptr->info->def.type_enum.count);
			if (ret >= 0) {
				ret = FUNC5(cptr,*valptr);
			}
			*maskptr = ~0;
		} else if (cptr->info->type == pvr2_ctl_bitmask) {
			ret = FUNC3(
				ptr,len,maskptr,valptr,
				cptr->info->def.type_bitmask.bit_names,
				cptr->info->def.type_bitmask.valid_bits);
		}
	} while(0); FUNC1(cptr->hdw->big_lock);
	return ret;
}