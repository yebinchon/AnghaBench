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
struct lp_struct {int /*<<< orphan*/  dev; int /*<<< orphan*/  bits; } ;

/* Variables and functions */
 int /*<<< orphan*/  LP_PARPORT_CLAIMED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct lp_struct *this_lp)
{
	if (!FUNC1(LP_PARPORT_CLAIMED, &this_lp->bits)) {
		FUNC0 (this_lp->dev);
	}
}