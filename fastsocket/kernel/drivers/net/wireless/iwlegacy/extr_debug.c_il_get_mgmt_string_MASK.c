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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MANAGEMENT_ACTION ; 
 int /*<<< orphan*/  MANAGEMENT_ASSOC_REQ ; 
 int /*<<< orphan*/  MANAGEMENT_ASSOC_RESP ; 
 int /*<<< orphan*/  MANAGEMENT_ATIM ; 
 int /*<<< orphan*/  MANAGEMENT_AUTH ; 
 int /*<<< orphan*/  MANAGEMENT_BEACON ; 
 int /*<<< orphan*/  MANAGEMENT_DEAUTH ; 
 int /*<<< orphan*/  MANAGEMENT_DISASSOC ; 
 int /*<<< orphan*/  MANAGEMENT_PROBE_REQ ; 
 int /*<<< orphan*/  MANAGEMENT_PROBE_RESP ; 
 int /*<<< orphan*/  MANAGEMENT_REASSOC_REQ ; 
 int /*<<< orphan*/  MANAGEMENT_REASSOC_RESP ; 

__attribute__((used)) static const char *
FUNC1(int cmd)
{
	switch (cmd) {
	FUNC0(MANAGEMENT_ASSOC_REQ);
	FUNC0(MANAGEMENT_ASSOC_RESP);
	FUNC0(MANAGEMENT_REASSOC_REQ);
	FUNC0(MANAGEMENT_REASSOC_RESP);
	FUNC0(MANAGEMENT_PROBE_REQ);
	FUNC0(MANAGEMENT_PROBE_RESP);
	FUNC0(MANAGEMENT_BEACON);
	FUNC0(MANAGEMENT_ATIM);
	FUNC0(MANAGEMENT_DISASSOC);
	FUNC0(MANAGEMENT_AUTH);
	FUNC0(MANAGEMENT_DEAUTH);
	FUNC0(MANAGEMENT_ACTION);
	default:
		return "UNKNOWN";

	}
}