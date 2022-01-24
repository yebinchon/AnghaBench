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

__attribute__((used)) static u32
FUNC3(struct nvbios_init *init, u32 reg)
{
	reg = FUNC1(init, reg);
	if (FUNC0(init))
		return FUNC2(init->subdev, reg);
	return 0x00000000;
}