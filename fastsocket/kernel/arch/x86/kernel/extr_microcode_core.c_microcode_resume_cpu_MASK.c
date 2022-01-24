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
struct ucode_cpu_info {int /*<<< orphan*/  mc; } ;
typedef  enum ucode_state { ____Placeholder_ucode_state } ucode_state ;

/* Variables and functions */
 int UCODE_NFOUND ; 
 int UCODE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 struct ucode_cpu_info* ucode_cpu_info ; 

__attribute__((used)) static enum ucode_state FUNC2(int cpu)
{
	struct ucode_cpu_info *uci = ucode_cpu_info + cpu;

	if (!uci->mc)
		return UCODE_NFOUND;

	FUNC1("microcode: CPU%d updated upon resume\n", cpu);
	FUNC0(cpu);

	return UCODE_OK;
}