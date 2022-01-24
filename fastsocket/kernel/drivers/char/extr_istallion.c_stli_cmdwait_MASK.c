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
struct stliport {scalar_t__ rc; int /*<<< orphan*/  state; int /*<<< orphan*/  raw_wait; } ;
struct stlibrd {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  ST_CMDING ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct stlibrd*,struct stliport*,unsigned long,void*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct stlibrd *brdp, struct stliport *portp, unsigned long cmd, void *arg, int size, int copyback)
{
	FUNC3(portp->raw_wait,
			!FUNC2(ST_CMDING, &portp->state));
	if (FUNC0(current))
		return -ERESTARTSYS;

	FUNC1(brdp, portp, cmd, arg, size, copyback);

	FUNC3(portp->raw_wait,
			!FUNC2(ST_CMDING, &portp->state));
	if (FUNC0(current))
		return -ERESTARTSYS;

	if (portp->rc != 0)
		return -EIO;
	return 0;
}