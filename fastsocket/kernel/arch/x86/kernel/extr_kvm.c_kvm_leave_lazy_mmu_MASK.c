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
struct kvm_para_state {int dummy; } ;

/* Variables and functions */
 struct kvm_para_state* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_para_state*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(void)
{
	struct kvm_para_state *state = FUNC0();

	FUNC1(state);
	FUNC2();
}