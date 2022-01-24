#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct spufs_calls {scalar_t__ owner; } ;
struct TYPE_3__ {scalar_t__ owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_1__* spufs_calls ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3(struct spufs_calls *calls)
{
	FUNC0(spufs_calls->owner != calls->owner);
	FUNC1(spufs_calls, NULL);
	FUNC2();
}