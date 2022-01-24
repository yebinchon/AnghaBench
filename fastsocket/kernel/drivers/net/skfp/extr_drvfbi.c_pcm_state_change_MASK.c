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
struct s_smc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct s_smc*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct s_smc*,int /*<<< orphan*/ ) ; 

void FUNC2(struct s_smc *smc, int plc, int p_state)
{
	/*
	 * the current implementation of pcm_state_change() in the driver
	 * parts must be renamed to drv_pcm_state_change() which will be called
	 * now after led_indication.
	 */
	FUNC0(smc,plc,p_state) ;
	
	FUNC1(smc,0) ;
}