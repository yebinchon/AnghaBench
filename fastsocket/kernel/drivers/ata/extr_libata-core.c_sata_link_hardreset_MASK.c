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
struct ata_link {int /*<<< orphan*/  ap; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_TMOUT_PMP_SRST_WAIT ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EAGAIN ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  SCR_CONTROL ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct ata_link*) ; 
 int /*<<< orphan*/  FUNC3 (struct ata_link*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct ata_link*) ; 
 int FUNC6 (struct ata_link*,unsigned long,int (*) (struct ata_link*)) ; 
 int /*<<< orphan*/  jiffies ; 
 int FUNC7 (struct ata_link*,unsigned long const*,unsigned long) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct ata_link*,int /*<<< orphan*/ ,int*) ; 
 int FUNC10 (struct ata_link*,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (struct ata_link*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct ata_link*) ; 
 scalar_t__ FUNC13 (struct ata_link*) ; 
 scalar_t__ FUNC14 (unsigned long,unsigned long) ; 

int FUNC15(struct ata_link *link, const unsigned long *timing,
			unsigned long deadline,
			bool *online, int (*check_ready)(struct ata_link *))
{
	u32 scontrol;
	int rc;

	FUNC0("ENTER\n");

	if (online)
		*online = false;

	if (FUNC13(link)) {
		/* SATA spec says nothing about how to reconfigure
		 * spd.  To be on the safe side, turn off phy during
		 * reconfiguration.  This works for at least ICH7 AHCI
		 * and Sil3124.
		 */
		if ((rc = FUNC9(link, SCR_CONTROL, &scontrol)))
			goto out;

		scontrol = (scontrol & 0x0f0) | 0x304;

		if ((rc = FUNC10(link, SCR_CONTROL, scontrol)))
			goto out;

		FUNC12(link);
	}

	/* issue phy wake/reset */
	if ((rc = FUNC9(link, SCR_CONTROL, &scontrol)))
		goto out;

	scontrol = (scontrol & 0x0f0) | 0x301;

	if ((rc = FUNC11(link, SCR_CONTROL, scontrol)))
		goto out;

	/* Couldn't find anything in SATA I/II specs, but AHCI-1.1
	 * 10.4.2 says at least 1 ms.
	 */
	FUNC4(link->ap, 1);

	/* bring link back */
	rc = FUNC7(link, timing, deadline);
	if (rc)
		goto out;
	/* if link is offline nothing more to do */
	if (FUNC5(link))
		goto out;

	/* Link is online.  From this point, -ENODEV too is an error. */
	if (online)
		*online = true;

	if (FUNC8(link->ap) && FUNC2(link)) {
		/* If PMP is supported, we have to do follow-up SRST.
		 * Some PMPs don't send D2H Reg FIS after hardreset if
		 * the first port is empty.  Wait only for
		 * ATA_TMOUT_PMP_SRST_WAIT.
		 */
		if (check_ready) {
			unsigned long pmp_deadline;

			pmp_deadline = FUNC1(jiffies,
						    ATA_TMOUT_PMP_SRST_WAIT);
			if (FUNC14(pmp_deadline, deadline))
				pmp_deadline = deadline;
			FUNC6(link, pmp_deadline, check_ready);
		}
		rc = -EAGAIN;
		goto out;
	}

	rc = 0;
	if (check_ready)
		rc = FUNC6(link, deadline, check_ready);
 out:
	if (rc && rc != -EAGAIN) {
		/* online is set iff link is online && reset succeeded */
		if (online)
			*online = false;
		FUNC3(link, KERN_ERR,
				"COMRESET failed (errno=%d)\n", rc);
	}
	FUNC0("EXIT, rc=%d\n", rc);
	return rc;
}