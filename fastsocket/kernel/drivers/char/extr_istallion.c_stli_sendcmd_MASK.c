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
struct stliport {int dummy; } ;
struct stlibrd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct stlibrd*,struct stliport*,unsigned long,void*,int,int) ; 
 int /*<<< orphan*/  brd_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct stlibrd *brdp, struct stliport *portp, unsigned long cmd, void *arg, int size, int copyback)
{
	unsigned long		flags;

	FUNC1(&brd_lock, flags);
	FUNC0(brdp, portp, cmd, arg, size, copyback);
	FUNC2(&brd_lock, flags);
}