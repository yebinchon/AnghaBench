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
struct bcm5974_param {scalar_t__ dim; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC1 (struct bcm5974_param const*,int) ; 

__attribute__((used)) static inline int FUNC2(const struct bcm5974_param *p, int x)
{
	int s = FUNC1(p, x);

	return FUNC0(s, 0, p->dim - 1);
}