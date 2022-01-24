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
struct stlport {int /*<<< orphan*/  brdnr; int /*<<< orphan*/  panelnr; int /*<<< orphan*/  portnr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCR ; 
 int CCR_MAXWAIT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct stlport*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct stlport *portp)
{
	int	i;

	for (i = 0; i < CCR_MAXWAIT; i++)
		if (FUNC1(portp, CCR) == 0)
			return;

	FUNC0("STALLION: cd1400 not responding, port=%d panel=%d brd=%d\n",
		portp->portnr, portp->panelnr, portp->brdnr);
}