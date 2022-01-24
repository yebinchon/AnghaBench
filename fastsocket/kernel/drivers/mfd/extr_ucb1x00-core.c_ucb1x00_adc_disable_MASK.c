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
struct ucb1x00 {int /*<<< orphan*/  adc_sem; int /*<<< orphan*/  adc_cr; } ;

/* Variables and functions */
 int /*<<< orphan*/  UCB_ADC_CR ; 
 int /*<<< orphan*/  UCB_ADC_ENA ; 
 int /*<<< orphan*/  FUNC0 (struct ucb1x00*) ; 
 int /*<<< orphan*/  FUNC1 (struct ucb1x00*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct ucb1x00 *ucb)
{
	ucb->adc_cr &= ~UCB_ADC_ENA;
	FUNC1(ucb, UCB_ADC_CR, ucb->adc_cr);
	FUNC0(ucb);

	FUNC2(&ucb->adc_sem);
}