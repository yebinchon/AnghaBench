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
struct pcap_chip {int /*<<< orphan*/  adc_mutex; } ;

/* Variables and functions */
 int PCAP_ADC_TS_M_MASK ; 
 int PCAP_ADC_TS_REF_LOWPWR ; 
 int /*<<< orphan*/  PCAP_REG_ADC ; 
 int /*<<< orphan*/  FUNC0 (struct pcap_chip*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct pcap_chip*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct pcap_chip *pcap, u32 bits)
{
	u32 tmp;

	FUNC2(&pcap->adc_mutex);
	FUNC0(pcap, PCAP_REG_ADC, &tmp);
	tmp &= ~(PCAP_ADC_TS_M_MASK | PCAP_ADC_TS_REF_LOWPWR);
	tmp |= bits & (PCAP_ADC_TS_M_MASK | PCAP_ADC_TS_REF_LOWPWR);
	FUNC1(pcap, PCAP_REG_ADC, tmp);
	FUNC3(&pcap->adc_mutex);
}