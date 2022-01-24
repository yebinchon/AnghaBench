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
struct ti_ohci {int dummy; } ;
struct hpsb_host {struct ti_ohci* hostdata; } ;
typedef  int quadlet_t ;

/* Variables and functions */
 int /*<<< orphan*/  OHCI1394_CSRCompareData ; 
 int /*<<< orphan*/  OHCI1394_CSRControl ; 
 int /*<<< orphan*/  OHCI1394_CSRData ; 
 int OHCI_LOOP_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct ti_ohci*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ti_ohci*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static quadlet_t FUNC3(struct hpsb_host *host, int reg,
                                 quadlet_t data, quadlet_t compare)
{
	struct ti_ohci *ohci = host->hostdata;
	int i;

	FUNC2(ohci, OHCI1394_CSRData, data);
	FUNC2(ohci, OHCI1394_CSRCompareData, compare);
	FUNC2(ohci, OHCI1394_CSRControl, reg & 0x3);

	for (i = 0; i < OHCI_LOOP_COUNT; i++) {
		if (FUNC1(ohci, OHCI1394_CSRControl) & 0x80000000)
			break;

		FUNC0(1);
	}

	return FUNC1(ohci, OHCI1394_CSRData);
}