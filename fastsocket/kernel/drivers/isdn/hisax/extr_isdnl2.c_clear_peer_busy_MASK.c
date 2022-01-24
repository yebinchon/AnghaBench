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
struct Layer2 {int /*<<< orphan*/  flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLG_L2BLOCK ; 
 int /*<<< orphan*/  FLG_PEER_BUSY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC1(struct Layer2 *l2) {
	if (FUNC0(FLG_PEER_BUSY, &l2->flag))
		FUNC0(FLG_L2BLOCK, &l2->flag);
}