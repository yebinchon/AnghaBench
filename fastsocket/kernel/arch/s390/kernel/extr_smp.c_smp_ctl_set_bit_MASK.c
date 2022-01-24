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
struct ec_creg_mask_parms {int* orvals; int* andvals; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int**,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ec_creg_mask_parms*,int) ; 
 int /*<<< orphan*/  smp_ctl_bit_callback ; 

void FUNC2(int cr, int bit)
{
	struct ec_creg_mask_parms parms;

	FUNC0(&parms.orvals, 0, sizeof(parms.orvals));
	FUNC0(&parms.andvals, 0xff, sizeof(parms.andvals));
	parms.orvals[cr] = 1 << bit;
	FUNC1(smp_ctl_bit_callback, &parms, 1);
}