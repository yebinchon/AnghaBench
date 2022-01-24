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
struct ucode_cpu_info {scalar_t__ valid; } ;
typedef  enum ucode_state { ____Placeholder_ucode_state } ucode_state ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 struct ucode_cpu_info* ucode_cpu_info ; 

__attribute__((used)) static enum ucode_state FUNC2(int cpu)
{
	struct ucode_cpu_info *uci = ucode_cpu_info + cpu;
	enum ucode_state ustate;

	if (uci->valid)
		ustate = FUNC1(cpu);
	else
		ustate = FUNC0(cpu);

	return ustate;
}