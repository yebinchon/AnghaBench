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
typedef  int /*<<< orphan*/  u32 ;
struct nouveau_mem_exec_func {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct nouveau_fb {TYPE_1__ ram; } ;
struct nouveau_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ NV_MEM_TYPE_GDDR5 ; 
 struct nouveau_device* FUNC0 (int /*<<< orphan*/ ) ; 
 struct nouveau_fb* FUNC1 (struct nouveau_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_device*,int) ; 

__attribute__((used)) static u32
FUNC3(struct nouveau_mem_exec_func *exec, int mr)
{
	struct nouveau_device *device = FUNC0(exec->dev);
	struct nouveau_fb *pfb = FUNC1(device);
	if (pfb->ram.type != NV_MEM_TYPE_GDDR5) {
		if (mr <= 1)
			return FUNC2(device, 0x10f300 + ((mr - 0) * 4));
		return FUNC2(device, 0x10f320 + ((mr - 2) * 4));
	} else {
		if (mr == 0)
			return FUNC2(device, 0x10f300 + (mr * 4));
		else
		if (mr <= 7)
			return FUNC2(device, 0x10f32c + (mr * 4));
		return FUNC2(device, 0x10f34c);
	}
}