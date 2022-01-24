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
typedef  int /*<<< orphan*/  u8 ;
struct pcf50633 {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int FUNC0 (struct pcf50633*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct pcf50633 *pcf , u8 reg,
					int nr_regs, u8 *data)
{
	int ret;

	FUNC1(&pcf->lock);
	ret = FUNC0(pcf, reg, nr_regs, data);
	FUNC2(&pcf->lock);

	return ret;
}