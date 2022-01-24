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
struct nouveau_object {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* fini ) (struct nouveau_object*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nouveau_object*,char*) ; 
 TYPE_1__* FUNC1 (struct nouveau_object*) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_object*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct nouveau_object*,int) ; 

void
FUNC4(struct nouveau_object *subdev)
{
	FUNC2(subdev, "resetting...\n");
	FUNC1(subdev)->fini(subdev, false);
	FUNC0(subdev, "reset\n");
}