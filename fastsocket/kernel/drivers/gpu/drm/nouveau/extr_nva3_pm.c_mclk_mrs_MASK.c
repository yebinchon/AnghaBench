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
struct TYPE_2__ {int ranks; } ;
struct nouveau_fb {TYPE_1__ ram; } ;
struct nouveau_device {int dummy; } ;

/* Variables and functions */
 struct nouveau_device* FUNC0 (int /*<<< orphan*/ ) ; 
 struct nouveau_fb* FUNC1 (struct nouveau_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_device*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct nouveau_mem_exec_func *exec, int mr, u32 data)
{
	struct nouveau_device *device = FUNC0(exec->dev);
	struct nouveau_fb *pfb = FUNC1(device);
	if (mr <= 1) {
		if (pfb->ram.ranks > 1)
			FUNC2(device, 0x1002c8 + ((mr - 0) * 4), data);
		FUNC2(device, 0x1002c0 + ((mr - 0) * 4), data);
	} else
	if (mr <= 3) {
		if (pfb->ram.ranks > 1)
			FUNC2(device, 0x1002e8 + ((mr - 2) * 4), data);
		FUNC2(device, 0x1002e0 + ((mr - 2) * 4), data);
	}
}