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
struct clocksource {int dummy; } ;
typedef  int cycle_t ;

/* Variables and functions */
 int /*<<< orphan*/  TCNT ; 
 struct sh_tmu_priv* FUNC0 (struct clocksource*) ; 
 int FUNC1 (struct sh_tmu_priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static cycle_t FUNC2(struct clocksource *cs)
{
	struct sh_tmu_priv *p = FUNC0(cs);

	return FUNC1(p, TCNT) ^ 0xffffffff;
}