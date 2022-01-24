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
typedef  int /*<<< orphan*/  u32 ;
struct seq_file {struct cpu_private* private; } ;
struct cpu_private {unsigned int cpu; unsigned int reg; scalar_t__ file; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpu_reg_range ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned int*,unsigned int*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (unsigned int,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct seq_file *seq, unsigned cpu, unsigned flag)
{
	unsigned msr, msr_min, msr_max;
	struct cpu_private *priv;
	u32 low, high;
	int i;

	if (seq) {
		priv = seq->private;
		if (priv->file) {
			if (!FUNC3(priv->cpu, priv->reg,
					       &low, &high))
				FUNC2(seq, priv->reg, low, high);
			return;
		}
	}

	for (i = 0; i < FUNC0(cpu_reg_range); i++) {
		if (!FUNC1(cpu, &msr_min, &msr_max, i, flag))
			continue;

		for (msr = msr_min; msr <= msr_max; msr++) {
			if (FUNC3(cpu, msr, &low, &high))
				continue;
			FUNC2(seq, msr, low, high);
		}
	}
}