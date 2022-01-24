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
 int /*<<< orphan*/  FUNC0 (struct s_smc*,int) ; 
 int /*<<< orphan*/  LED_Y_OFF ; 
 int /*<<< orphan*/  LED_Y_ON ; 
 int /*<<< orphan*/  FUNC1 (struct s_smc*,int /*<<< orphan*/ ) ; 

void FUNC2(struct s_smc *smc, int i)
{
	/* Call a driver special function if defined */
	FUNC0(smc,i) ;

        FUNC1(smc, i ? LED_Y_OFF : LED_Y_ON) ;
}