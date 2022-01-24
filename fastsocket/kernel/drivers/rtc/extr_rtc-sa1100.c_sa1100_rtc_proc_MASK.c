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
typedef  char* u32 ;
struct seq_file {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int OIER ; 
 int OIER_E1 ; 
 int RTSR ; 
 int RTSR_HZE ; 
 scalar_t__ RTTR ; 
 char* rtc_freq ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,char*) ; 

__attribute__((used)) static int FUNC1(struct device *dev, struct seq_file *seq)
{
	FUNC0(seq, "trim/divider\t: 0x%08x\n", (u32) RTTR);
	FUNC0(seq, "update_IRQ\t: %s\n",
			(RTSR & RTSR_HZE) ? "yes" : "no");
	FUNC0(seq, "periodic_IRQ\t: %s\n",
			(OIER & OIER_E1) ? "yes" : "no");
	FUNC0(seq, "periodic_freq\t: %ld\n", rtc_freq);

	return 0;
}