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
struct seq_file {int dummy; } ;
struct TYPE_4__ {int udelay_val; int /*<<< orphan*/  clock_tick; } ;
struct TYPE_3__ {int pv_printrev; int /*<<< orphan*/  pv_romvers; } ;

/* Variables and functions */
 int HZ ; 
 TYPE_2__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cputypval ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*) ; 
 int /*<<< orphan*/  ncpus_probed ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  prom_rev ; 
 TYPE_1__* romvec ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*) ; 
 int /*<<< orphan*/  sparc_cpu_type ; 
 int /*<<< orphan*/  sparc_fpu_type ; 

__attribute__((used)) static int FUNC6(struct seq_file *m, void *__unused)
{
	FUNC3(m,
		   "cpu\t\t: %s\n"
		   "fpu\t\t: %s\n"
		   "promlib\t\t: Version %d Revision %d\n"
		   "prom\t\t: %d.%d\n"
		   "type\t\t: %s\n"
		   "ncpus probed\t: %d\n"
		   "ncpus active\t: %d\n"
#ifndef CONFIG_SMP
		   "CPU0Bogo\t: %lu.%02lu\n"
		   "CPU0ClkTck\t: %ld\n"
#endif
		   ,
		   sparc_cpu_type,
		   sparc_fpu_type ,
		   romvec->pv_romvers,
		   prom_rev,
		   romvec->pv_printrev >> 16,
		   romvec->pv_printrev & 0xffff,
		   &cputypval,
		   ncpus_probed,
		   FUNC2()
#ifndef CONFIG_SMP
		   , FUNC0(0).udelay_val/(500000/HZ),
		   (FUNC0(0).udelay_val/(5000/HZ)) % 100,
		   FUNC0(0).clock_tick
#endif
		);

#ifdef CONFIG_SMP
	smp_bogo(m);
#endif
	FUNC1(m);
#ifdef CONFIG_SMP
	smp_info(m);
#endif
	return 0;
}