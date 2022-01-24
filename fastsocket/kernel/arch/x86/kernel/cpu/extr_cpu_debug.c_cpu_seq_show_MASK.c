#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct seq_file {struct cpu_private* private; } ;
struct cpu_private {size_t type; int /*<<< orphan*/  cpu; int /*<<< orphan*/  file; } ;
struct TYPE_2__ {int flag; } ;

/* Variables and functions */
#define  CPU_APIC 132 
#define  CPU_CR 131 
#define  CPU_DEBUG 130 
#define  CPU_DT 129 
 int /*<<< orphan*/  CPU_INDEX_BIT ; 
#define  CPU_TSS 128 
 int EINVAL ; 
 TYPE_1__* cpu_base ; 
 int /*<<< orphan*/  print_apic ; 
 int /*<<< orphan*/  print_cr ; 
 int /*<<< orphan*/  print_dr ; 
 int /*<<< orphan*/  print_dt ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  print_tss ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct seq_file*,int) ; 

__attribute__((used)) static int FUNC3(struct seq_file *seq, void *v)
{
	struct cpu_private *priv = seq->private;

	if (priv == NULL)
		return -EINVAL;

	switch (cpu_base[priv->type].flag) {
	case CPU_TSS:
		FUNC2(priv->cpu, print_tss, seq, 1);
		break;
	case CPU_CR:
		FUNC2(priv->cpu, print_cr, seq, 1);
		break;
	case CPU_DT:
		FUNC2(priv->cpu, print_dt, seq, 1);
		break;
	case CPU_DEBUG:
		if (priv->file == CPU_INDEX_BIT)
			FUNC2(priv->cpu, print_dr, seq, 1);
		FUNC0(seq, priv->cpu, cpu_base[priv->type].flag);
		break;
	case CPU_APIC:
		if (priv->file == CPU_INDEX_BIT)
			FUNC2(priv->cpu, print_apic, seq, 1);
		FUNC0(seq, priv->cpu, cpu_base[priv->type].flag);
		break;

	default:
		FUNC0(seq, priv->cpu, cpu_base[priv->type].flag);
		break;
	}
	FUNC1(seq, "\n");

	return 0;
}