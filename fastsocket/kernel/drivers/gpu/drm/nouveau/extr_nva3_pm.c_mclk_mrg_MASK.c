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
typedef  int /*<<< orphan*/  u32 ;
struct nouveau_mem_exec_func {int /*<<< orphan*/  dev; } ;
struct nouveau_device {int dummy; } ;

/* Variables and functions */
 struct nouveau_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_device*,int) ; 

__attribute__((used)) static u32
FUNC2(struct nouveau_mem_exec_func *exec, int mr)
{
	struct nouveau_device *device = FUNC0(exec->dev);
	if (mr <= 1)
		return FUNC1(device, 0x1002c0 + ((mr - 0) * 4));
	if (mr <= 3)
		return FUNC1(device, 0x1002e0 + ((mr - 2) * 4));
	return 0;
}