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
struct rtrack {scalar_t__ curvol; int /*<<< orphan*/  io; scalar_t__ muted; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(struct rtrack *rt)
{
	if (rt->curvol == 0 || rt->muted) {
		FUNC0(128+64+16+  1, rt->io);   /* wr-enable + data low */
		FUNC0(128+64+16+2+1, rt->io);   /* clock */
	}
	else {
		FUNC0(128+64+16+8+  1, rt->io);  /* on + wr-enable + data low */
		FUNC0(128+64+16+8+2+1, rt->io);  /* clock */
	}
	FUNC1(1000);
}