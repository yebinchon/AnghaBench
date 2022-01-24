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
struct layer2 {int vs; int va; unsigned int window; int /*<<< orphan*/  flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLG_MOD128 ; 
 int /*<<< orphan*/  FLG_PEER_BUSY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

inline unsigned int
FUNC1(struct layer2 *l2)
{
	unsigned int p1;

	if (FUNC0(FLG_MOD128, &l2->flag))
		p1 = (l2->vs - l2->va) % 128;
	else
		p1 = (l2->vs - l2->va) % 8;
	return (p1 < l2->window) && !FUNC0(FLG_PEER_BUSY, &l2->flag);
}