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
typedef  scalar_t__ u32 ;
struct nouveau_ramht {int dummy; } ;
struct nouveau_bar {int /*<<< orphan*/  (* flush ) (struct nouveau_bar*) ;} ;
struct TYPE_2__ {scalar_t__ size; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct nouveau_bar* FUNC0 (struct nouveau_ramht*) ; 
 scalar_t__ FUNC1 (struct nouveau_ramht*,int,scalar_t__) ; 
 TYPE_1__* FUNC2 (struct nouveau_ramht*) ; 
 int /*<<< orphan*/  FUNC3 (struct nouveau_ramht*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct nouveau_ramht*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct nouveau_bar*) ; 

int
FUNC6(struct nouveau_ramht *ramht, int chid,
		     u32 handle, u32 context)
{
	struct nouveau_bar *bar = FUNC0(ramht);
	u32 co, ho;

	co = ho = FUNC1(ramht, chid, handle);
	do {
		if (!FUNC3(ramht, co + 4)) {
			FUNC4(ramht, co + 0, handle);
			FUNC4(ramht, co + 4, context);
			if (bar)
				bar->flush(bar);
			return co;
		}

		co += 8;
		if (co >= FUNC2(ramht)->size)
			co = 0;
	} while (co != ho);

	return -ENOMEM;
}