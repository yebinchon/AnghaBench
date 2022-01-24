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
struct seq_file {int dummy; } ;
struct cpuinfo_um {int dummy; } ;

/* Variables and functions */
 int HZ ; 
 struct cpuinfo_um* cpu_data ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  host_info ; 
 int loops_per_jiffy ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,...) ; 

__attribute__((used)) static int FUNC2(struct seq_file *m, void *v)
{
	int index = 0;

#ifdef CONFIG_SMP
	index = (struct cpuinfo_um *) v - cpu_data;
	if (!cpu_online(index))
		return 0;
#endif

	FUNC1(m, "processor\t: %d\n", index);
	FUNC1(m, "vendor_id\t: User Mode Linux\n");
	FUNC1(m, "model name\t: UML\n");
	FUNC1(m, "mode\t\t: skas\n");
	FUNC1(m, "host\t\t: %s\n", host_info);
	FUNC1(m, "bogomips\t: %lu.%02lu\n\n",
		   loops_per_jiffy/(500000/HZ),
		   (loops_per_jiffy/(5000/HZ)) % 100);

	return 0;
}