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
struct nouveau_ramht {int dummy; } ;
struct nouveau_bar {int /*<<< orphan*/  (* flush ) (struct nouveau_bar*) ;} ;

/* Variables and functions */
 struct nouveau_bar* FUNC0 (struct nouveau_ramht*) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_ramht*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_bar*) ; 

void
FUNC3(struct nouveau_ramht *ramht, int cookie)
{
	struct nouveau_bar *bar = FUNC0(ramht);
	FUNC1(ramht, cookie + 0, 0x00000000);
	FUNC1(ramht, cookie + 4, 0x00000000);
	if (bar)
		bar->flush(bar);
}