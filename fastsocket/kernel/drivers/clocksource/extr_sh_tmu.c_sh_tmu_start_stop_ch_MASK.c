#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sh_tmu_priv {TYPE_2__* pdev; } ;
struct sh_timer_config {int timer_bit; } ;
struct TYPE_3__ {struct sh_timer_config* platform_data; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  TSTR ; 
 int /*<<< orphan*/  sh_tmu_lock ; 
 unsigned long FUNC0 (struct sh_tmu_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sh_tmu_priv*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct sh_tmu_priv *p, int start)
{
	struct sh_timer_config *cfg = p->pdev->dev.platform_data;
	unsigned long flags, value;

	/* start stop register shared by multiple timer channels */
	FUNC2(&sh_tmu_lock, flags);
	value = FUNC0(p, TSTR);

	if (start)
		value |= 1 << cfg->timer_bit;
	else
		value &= ~(1 << cfg->timer_bit);

	FUNC1(p, TSTR, value);
	FUNC3(&sh_tmu_lock, flags);
}