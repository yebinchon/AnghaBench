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
struct sh_tmu_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TCNT ; 
 int /*<<< orphan*/  TCOR ; 
 int /*<<< orphan*/  TCR ; 
 int /*<<< orphan*/  FUNC0 (struct sh_tmu_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sh_tmu_priv*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sh_tmu_priv*,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct sh_tmu_priv *p, unsigned long delta,
			    int periodic)
{
	/* stop timer */
	FUNC1(p, 0);

	/* acknowledge interrupt */
	FUNC0(p, TCR);

	/* enable interrupt */
	FUNC2(p, TCR, 0x0020);

	/* reload delta value in case of periodic timer */
	if (periodic)
		FUNC2(p, TCOR, delta);
	else
		FUNC2(p, TCOR, 0xffffffff);

	FUNC2(p, TCNT, delta);

	/* start timer */
	FUNC1(p, 1);
}