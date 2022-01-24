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
struct ucode_cpu_info {int /*<<< orphan*/ * mc; } ;

/* Variables and functions */
 struct ucode_cpu_info* ucode_cpu_info ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(int cpu)
{
	struct ucode_cpu_info *uci = ucode_cpu_info + cpu;

	FUNC0(uci->mc);
	uci->mc = NULL;
}