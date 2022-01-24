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
struct nouveau_mem_exec_func {int /*<<< orphan*/  dev; } ;
struct nouveau_device {int dummy; } ;

/* Variables and functions */
 struct nouveau_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct nouveau_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void
FUNC3(struct nouveau_mem_exec_func *exec, u32 nsec)
{
	struct nouveau_device *device = FUNC0(exec->dev);
	volatile u32 post = FUNC1(device, 0); (void)post;
	FUNC2((nsec + 500) / 1000);
}