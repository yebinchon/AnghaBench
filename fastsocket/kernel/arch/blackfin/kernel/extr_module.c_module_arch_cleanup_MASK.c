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
struct TYPE_2__ {int /*<<< orphan*/  bss_l2; int /*<<< orphan*/  data_l2; int /*<<< orphan*/  text_l2; int /*<<< orphan*/  bss_b_l1; int /*<<< orphan*/  data_b_l1; int /*<<< orphan*/  bss_a_l1; int /*<<< orphan*/  data_a_l1; int /*<<< orphan*/  text_l1; } ;
struct module {TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct module *mod)
{
	FUNC2(mod->arch.text_l1);
	FUNC0(mod->arch.data_a_l1);
	FUNC0(mod->arch.bss_a_l1);
	FUNC1(mod->arch.data_b_l1);
	FUNC1(mod->arch.bss_b_l1);
	FUNC3(mod->arch.text_l2);
	FUNC3(mod->arch.data_l2);
	FUNC3(mod->arch.bss_l2);
}