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
struct sh_cmt_priv {int overflow_bit; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMCNT ; 
 int /*<<< orphan*/  CMCSR ; 
 int FUNC0 (struct sh_cmt_priv*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static unsigned long FUNC2(struct sh_cmt_priv *p,
					int *has_wrapped)
{
	unsigned long v1, v2, v3;
	int o1, o2;

	o1 = FUNC0(p, CMCSR) & p->overflow_bit;

	/* Make sure the timer value is stable. Stolen from acpi_pm.c */
	do {
		o2 = o1;
		v1 = FUNC0(p, CMCNT);
		v2 = FUNC0(p, CMCNT);
		v3 = FUNC0(p, CMCNT);
		o1 = FUNC0(p, CMCSR) & p->overflow_bit;
	} while (FUNC1((o1 != o2) || (v1 > v2 && v1 < v3)
			  || (v2 > v3 && v2 < v1) || (v3 > v1 && v3 < v2)));

	*has_wrapped = o1;
	return v2;
}