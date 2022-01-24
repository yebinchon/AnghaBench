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
struct be_adapter {scalar_t__ db; } ;

/* Variables and functions */
 int SLIPORT_READY_TIMEOUT ; 
 scalar_t__ SLIPORT_STATUS_OFFSET ; 
 int SLIPORT_STATUS_RDY_MASK ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

int FUNC2(struct be_adapter *adapter)
{
#define SLIPORT_READY_TIMEOUT 30
	u32 sliport_status;
	int status = 0, i;

	for (i = 0; i < SLIPORT_READY_TIMEOUT; i++) {
		sliport_status = FUNC0(adapter->db + SLIPORT_STATUS_OFFSET);
		if (sliport_status & SLIPORT_STATUS_RDY_MASK)
			break;

		FUNC1(1000);
	}

	if (i == SLIPORT_READY_TIMEOUT)
		status = -1;

	return status;
}