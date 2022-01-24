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
struct raid_set {scalar_t__ stats; } ;

/* Variables and functions */
 unsigned int S_NR_STATS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct raid_set *rs)
{
	unsigned s = S_NR_STATS;

	while (s--)
		FUNC0(rs->stats + s, 0);
}