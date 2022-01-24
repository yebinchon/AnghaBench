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
 int ATA_LINK_RESUME_TRIES ; 
 int EINVAL ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  SCR_CONTROL ; 
 int /*<<< orphan*/  SCR_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct ata_link*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct ata_link*,unsigned long const*,unsigned long) ; 
 int FUNC3 (struct ata_link*,int /*<<< orphan*/ ,int*) ; 
 int FUNC4 (struct ata_link*,int /*<<< orphan*/ ,int) ; 

int FUNC5(struct ata_link *link, const unsigned long *params,
		     unsigned long deadline)
{
	int tries = ATA_LINK_RESUME_TRIES;
	u32 scontrol, serror;
	int rc;

	if ((rc = FUNC3(link, SCR_CONTROL, &scontrol)))
		return rc;

	/*
	 * Writes to SControl sometimes get ignored under certain
	 * controllers (ata_piix SIDPR).  Make sure DET actually is
	 * cleared.
	 */
	do {
		scontrol = (scontrol & 0x0f0) | 0x300;
		if ((rc = FUNC4(link, SCR_CONTROL, scontrol)))
			return rc;
		/*
		 * Some PHYs react badly if SStatus is pounded
		 * immediately after resuming.  Delay 200ms before
		 * debouncing.
		 */
		FUNC1(link->ap, 200);

		/* is SControl restored correctly? */
		if ((rc = FUNC3(link, SCR_CONTROL, &scontrol)))
			return rc;
	} while ((scontrol & 0xf0f) != 0x300 && --tries);

	if ((scontrol & 0xf0f) != 0x300) {
		FUNC0(link, KERN_ERR,
				"failed to resume link (SControl %X)\n",
				scontrol);
		return 0;
	}

	if (tries < ATA_LINK_RESUME_TRIES)
		FUNC0(link, KERN_WARNING,
				"link resume succeeded after %d retries\n",
				ATA_LINK_RESUME_TRIES - tries);

	if ((rc = FUNC2(link, params, deadline)))
		return rc;

	/* clear SError, some PHYs require this even for SRST to work */
	if (!(rc = FUNC3(link, SCR_ERROR, &serror)))
		rc = FUNC4(link, SCR_ERROR, serror);

	return rc != -EINVAL ? rc : 0;
}