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
struct fc_lport {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC1 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC2 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct fc_lport *lport)
{

	/* Free queued packets for the receive thread */
	FUNC0(lport);

	/* Detach from scsi-ml */
	FUNC3(lport->host);
	FUNC5(lport->host);

	/*
	 * Note that only the physical lport will have the exchange manager.
	 * for vports, this function is NOP
	 */
	FUNC1(lport);

	/* Free memory used by statistical counters */
	FUNC2(lport);

	/* Release Scsi_Host */
	FUNC4(lport->host);
}