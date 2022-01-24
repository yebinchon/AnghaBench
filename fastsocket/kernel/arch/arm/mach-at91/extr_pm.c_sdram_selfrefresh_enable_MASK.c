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
typedef  int u32 ;

/* Variables and functions */
 int AT91_SDRAMC_LPCB ; 
 int AT91_SDRAMC_LPCB_SELF_REFRESH ; 
 int /*<<< orphan*/  AT91_SDRAMC_LPR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int saved_lpr ; 

__attribute__((used)) static inline void FUNC2(void)
{
	u32 lpr;

	saved_lpr = FUNC0(AT91_SDRAMC_LPR);

	lpr = saved_lpr & ~AT91_SDRAMC_LPCB;
	FUNC1(AT91_SDRAMC_LPR, lpr | AT91_SDRAMC_LPCB_SELF_REFRESH);
}