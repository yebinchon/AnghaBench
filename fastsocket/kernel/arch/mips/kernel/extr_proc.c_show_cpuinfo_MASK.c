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
struct seq_file {int dummy; } ;
struct TYPE_2__ {unsigned int processor_id; unsigned int fpu_id; int options; int udelay_val; int watch_reg_count; int /*<<< orphan*/  core; int /*<<< orphan*/  srsets; int /*<<< orphan*/ * watch_reg_masks; int /*<<< orphan*/  tlbsize; } ;

/* Variables and functions */
 int HZ ; 
 int MIPS_CPU_FPU ; 
 int /*<<< orphan*/ * __cpu_name ; 
 TYPE_1__* cpu_data ; 
 scalar_t__ cpu_has_counter ; 
 scalar_t__ cpu_has_divec ; 
 scalar_t__ cpu_has_dsp ; 
 scalar_t__ cpu_has_mdmx ; 
 scalar_t__ cpu_has_mips16 ; 
 scalar_t__ cpu_has_mips3d ; 
 scalar_t__ cpu_has_mipsmt ; 
 scalar_t__ cpu_has_smartmips ; 
 scalar_t__ cpu_has_vce ; 
 scalar_t__ cpu_has_watch ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpu_online_map ; 
 scalar_t__ cpu_wait ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*) ; 
 int /*<<< orphan*/  vced_count ; 
 int /*<<< orphan*/  vcei_count ; 

__attribute__((used)) static int FUNC4(struct seq_file *m, void *v)
{
	unsigned long n = (unsigned long) v - 1;
	unsigned int version = cpu_data[n].processor_id;
	unsigned int fp_vers = cpu_data[n].fpu_id;
	char fmt [64];
	int i;

#ifdef CONFIG_SMP
	if (!cpu_isset(n, cpu_online_map))
		return 0;
#endif

	/*
	 * For the first processor also print the system type
	 */
	if (n == 0)
		FUNC2(m, "system type\t\t: %s\n", FUNC1());

	FUNC2(m, "processor\t\t: %ld\n", n);
	FUNC3(fmt, "cpu model\t\t: %%s V%%d.%%d%s\n",
	        cpu_data[n].options & MIPS_CPU_FPU ? "  FPU V%d.%d" : "");
	FUNC2(m, fmt, __cpu_name[n],
	                           (version >> 4) & 0x0f, version & 0x0f,
	                           (fp_vers >> 4) & 0x0f, fp_vers & 0x0f);
	FUNC2(m, "BogoMIPS\t\t: %u.%02u\n",
	              cpu_data[n].udelay_val / (500000/HZ),
	              (cpu_data[n].udelay_val / (5000/HZ)) % 100);
	FUNC2(m, "wait instruction\t: %s\n", cpu_wait ? "yes" : "no");
	FUNC2(m, "microsecond timers\t: %s\n",
	              cpu_has_counter ? "yes" : "no");
	FUNC2(m, "tlb_entries\t\t: %d\n", cpu_data[n].tlbsize);
	FUNC2(m, "extra interrupt vector\t: %s\n",
	              cpu_has_divec ? "yes" : "no");
	FUNC2(m, "hardware watchpoint\t: %s",
		   cpu_has_watch ? "yes, " : "no\n");
	if (cpu_has_watch) {
		FUNC2(m, "count: %d, address/irw mask: [",
			   cpu_data[n].watch_reg_count);
		for (i = 0; i < cpu_data[n].watch_reg_count; i++)
			FUNC2(m, "%s0x%04x", i ? ", " : "" ,
				   cpu_data[n].watch_reg_masks[i]);
		FUNC2(m, "]\n");
	}
	FUNC2(m, "ASEs implemented\t:%s%s%s%s%s%s\n",
		      cpu_has_mips16 ? " mips16" : "",
		      cpu_has_mdmx ? " mdmx" : "",
		      cpu_has_mips3d ? " mips3d" : "",
		      cpu_has_smartmips ? " smartmips" : "",
		      cpu_has_dsp ? " dsp" : "",
		      cpu_has_mipsmt ? " mt" : ""
		);
	FUNC2(m, "shadow register sets\t: %d\n",
		       cpu_data[n].srsets);
	FUNC2(m, "core\t\t\t: %d\n", cpu_data[n].core);

	FUNC3(fmt, "VCE%%c exceptions\t\t: %s\n",
	        cpu_has_vce ? "%u" : "not available");
	FUNC2(m, fmt, 'D', vced_count);
	FUNC2(m, fmt, 'I', vcei_count);
	FUNC2(m, "\n");

	return 0;
}