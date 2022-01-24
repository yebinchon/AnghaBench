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
typedef  int u16 ;
struct snd_ac97 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UCB_ADC_CR ; 
 int /*<<< orphan*/  UCB_ADC_DATA ; 
 unsigned int UCB_ADC_DAT_MASK ; 
 unsigned int UCB_ADC_DAT_VALID ; 
 int UCB_ADC_ENA ; 
 int UCB_ADC_START ; 
 int UCB_ADC_SYNC_ENA ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int FUNC1 (struct snd_ac97*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ac97*,int /*<<< orphan*/ ,int) ; 

unsigned int FUNC3(struct snd_ac97 *ac97, u16 adc_channel,
		int adcsync)
{
	unsigned int val;

	if (adcsync)
		adc_channel |= UCB_ADC_SYNC_ENA;

	FUNC2(ac97, UCB_ADC_CR, UCB_ADC_ENA | adc_channel);
	FUNC2(ac97, UCB_ADC_CR, UCB_ADC_ENA | adc_channel |
			UCB_ADC_START);

	while (!((val = FUNC1(ac97, UCB_ADC_DATA))
				& UCB_ADC_DAT_VALID))
		FUNC0(1);

	return val & UCB_ADC_DAT_MASK;
}