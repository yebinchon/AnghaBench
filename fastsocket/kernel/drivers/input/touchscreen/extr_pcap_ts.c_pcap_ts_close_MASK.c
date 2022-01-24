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
struct pcap_ts {int read_state; int /*<<< orphan*/  pcap; int /*<<< orphan*/  work; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int PCAP_ADC_TS_M_NONTS ; 
 int PCAP_ADC_TS_M_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct pcap_ts* FUNC1 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct input_dev *dev)
{
	struct pcap_ts *pcap_ts = FUNC1(dev);

	FUNC0(&pcap_ts->work);

	pcap_ts->read_state = PCAP_ADC_TS_M_NONTS;
	FUNC2(pcap_ts->pcap,
				pcap_ts->read_state << PCAP_ADC_TS_M_SHIFT);
}