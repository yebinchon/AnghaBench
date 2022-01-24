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
typedef  int u32 ;
struct nvbios_init {int /*<<< orphan*/  subdev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nvbios_init*) ; 
 int FUNC1 (struct nvbios_init*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static u32
FUNC4(struct nvbios_init *init, u32 reg, u32 mask, u32 val)
{
	reg = FUNC1(init, reg);
	if (FUNC0(init)) {
		u32 tmp = FUNC2(init->subdev, reg);
		FUNC3(init->subdev, reg, (tmp & ~mask) | val);
		return tmp;
	}
	return 0x00000000;
}