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
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct nouveau_object {int dummy; } ;
struct nouveau_falcon {scalar_t__ addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nouveau_falcon*,scalar_t__,int /*<<< orphan*/ ) ; 

void
FUNC1(struct nouveau_object *object, u64 addr, u32 data)
{
	struct nouveau_falcon *falcon = (void *)object;
	FUNC0(falcon, falcon->addr + addr, data);
}