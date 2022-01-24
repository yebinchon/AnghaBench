#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct pidff_device {int /*<<< orphan*/ * reports; int /*<<< orphan*/  hid; TYPE_4__* set_constant; TYPE_3__* block_load; } ;
struct TYPE_5__ {int /*<<< orphan*/  level; } ;
struct TYPE_6__ {TYPE_1__ constant; } ;
struct ff_effect {TYPE_2__ u; } ;
struct TYPE_8__ {int /*<<< orphan*/ * value; } ;
struct TYPE_7__ {int /*<<< orphan*/ * value; } ;

/* Variables and functions */
 size_t PID_EFFECT_BLOCK_INDEX ; 
 size_t PID_MAGNITUDE ; 
 size_t PID_SET_CONSTANT ; 
 int /*<<< orphan*/  USB_DIR_OUT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct pidff_device *pidff,
					    struct ff_effect *effect)
{
	pidff->set_constant[PID_EFFECT_BLOCK_INDEX].value[0] =
		pidff->block_load[PID_EFFECT_BLOCK_INDEX].value[0];
	FUNC0(&pidff->set_constant[PID_MAGNITUDE],
			 effect->u.constant.level);

	FUNC1(pidff->hid, pidff->reports[PID_SET_CONSTANT],
			  USB_DIR_OUT);
}