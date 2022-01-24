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
struct pcap_chip {int dummy; } ;

/* Variables and functions */
 int PCAP_ADC_ADEN ; 
 int PCAP_ADC_BATT_I_ADC ; 
 int PCAP_ADC_BATT_I_POLARITY ; 
 int /*<<< orphan*/  PCAP_REG_ADC ; 
 int /*<<< orphan*/  FUNC0 (struct pcap_chip*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct pcap_chip*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct pcap_chip *pcap)
{
	u32 tmp;

	FUNC0(pcap, PCAP_REG_ADC, &tmp);
	tmp &= ~(PCAP_ADC_ADEN|PCAP_ADC_BATT_I_ADC|PCAP_ADC_BATT_I_POLARITY);
	FUNC1(pcap, PCAP_REG_ADC, tmp);
}