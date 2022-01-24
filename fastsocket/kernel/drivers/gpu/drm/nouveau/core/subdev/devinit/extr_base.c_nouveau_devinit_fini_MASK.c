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
struct nouveau_devinit {int post; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int) ; 

int
FUNC1(struct nouveau_devinit *devinit, bool suspend)
{
	/* force full reinit on resume */
	if (suspend)
		devinit->post = true;

	return FUNC0(&devinit->base, suspend);
}