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
struct layer2 {int /*<<< orphan*/  flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLG_ACK_PEND ; 
 int /*<<< orphan*/  FLG_OWN_BUSY ; 
 int /*<<< orphan*/  FLG_REJEXC ; 
 int /*<<< orphan*/  FUNC0 (struct layer2*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

inline void
FUNC2(struct layer2 *l2)
{
	FUNC1(FLG_ACK_PEND, &l2->flag);
	FUNC1(FLG_REJEXC, &l2->flag);
	FUNC1(FLG_OWN_BUSY, &l2->flag);
	FUNC0(l2);
}