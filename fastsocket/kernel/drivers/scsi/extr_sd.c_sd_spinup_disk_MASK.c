#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct scsi_sense_hdr {scalar_t__ sense_key; int asc; int ascq; } ;
struct scsi_disk {TYPE_1__* device; } ;
struct TYPE_2__ {scalar_t__ start_stop_pwr_cond; scalar_t__ no_start_on_add; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_NONE ; 
 int DRIVER_SENSE ; 
 int HZ ; 
 int /*<<< orphan*/  KERN_NOTICE ; 
 scalar_t__ NOT_READY ; 
 int /*<<< orphan*/  SD_MAX_RETRIES ; 
 int /*<<< orphan*/  SD_TIMEOUT ; 
 unsigned char START_STOP ; 
 unsigned char TEST_UNIT_READY ; 
 scalar_t__ UNIT_ATTENTION ; 
 int FUNC0 (unsigned int) ; 
 int jiffies ; 
 scalar_t__ FUNC1 (struct scsi_disk*,struct scsi_sense_hdr*) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 unsigned int FUNC5 (TYPE_1__*,unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct scsi_sense_hdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct scsi_sense_hdr*) ; 
 scalar_t__ FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct scsi_disk*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct scsi_disk*,struct scsi_sense_hdr*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct scsi_disk*,char*) ; 
 scalar_t__ FUNC11 (int,unsigned long) ; 

__attribute__((used)) static void
FUNC12(struct scsi_disk *sdkp)
{
	unsigned char cmd[10];
	unsigned long spintime_expire = 0;
	int retries, spintime;
	unsigned int the_result;
	struct scsi_sense_hdr sshdr;
	int sense_valid = 0;

	spintime = 0;

	/* Spin up drives, as required.  Only do this at boot time */
	/* Spinup needs to be done for module loads too. */
	do {
		retries = 0;

		do {
			cmd[0] = TEST_UNIT_READY;
			FUNC2((void *) &cmd[1], 0, 9);

			the_result = FUNC5(sdkp->device, cmd,
						      DMA_NONE, NULL, 0,
						      &sshdr, SD_TIMEOUT,
						      SD_MAX_RETRIES, NULL);

			/*
			 * If the drive has indicated to us that it
			 * doesn't have any media in it, don't bother
			 * with any more polling.
			 */
			if (FUNC1(sdkp, &sshdr))
				return;

			if (the_result)
				sense_valid = FUNC6(&sshdr);
			retries++;
		} while (retries < 3 && 
			 (!FUNC7(the_result) ||
			  ((FUNC0(the_result) & DRIVER_SENSE) &&
			  sense_valid && sshdr.sense_key == UNIT_ATTENTION)));

		if ((FUNC0(the_result) & DRIVER_SENSE) == 0) {
			/* no sense, TUR either succeeded or failed
			 * with a status error */
			if(!spintime && !FUNC7(the_result)) {
				FUNC10(KERN_NOTICE, sdkp, "Unit Not Ready\n");
				FUNC8(sdkp, the_result);
			}
			break;
		}
					
		/*
		 * The device does not want the automatic start to be issued.
		 */
		if (sdkp->device->no_start_on_add)
			break;

		if (sense_valid && sshdr.sense_key == NOT_READY) {
			if (sshdr.asc == 4 && sshdr.ascq == 3)
				break;	/* manual intervention required */
			if (sshdr.asc == 4 && sshdr.ascq == 0xb)
				break;	/* standby */
			if (sshdr.asc == 4 && sshdr.ascq == 0xc)
				break;	/* unavailable */
			/*
			 * Issue command to spin up drive when not ready
			 */
			if (!spintime) {
				FUNC10(KERN_NOTICE, sdkp, "Spinning up disk...");
				cmd[0] = START_STOP;
				cmd[1] = 1;	/* Return immediately */
				FUNC2((void *) &cmd[2], 0, 8);
				cmd[4] = 1;	/* Start spin cycle */
				if (sdkp->device->start_stop_pwr_cond)
					cmd[4] |= 1 << 4;
				FUNC5(sdkp->device, cmd, DMA_NONE,
						 NULL, 0, &sshdr,
						 SD_TIMEOUT, SD_MAX_RETRIES,
						 NULL);
				spintime_expire = jiffies + 100 * HZ;
				spintime = 1;
			}
			/* Wait 1 second for next try */
			FUNC3(1000);
			FUNC4(".");

		/*
		 * Wait for USB flash devices with slow firmware.
		 * Yes, this sense key/ASC combination shouldn't
		 * occur here.  It's characteristic of these devices.
		 */
		} else if (sense_valid &&
				sshdr.sense_key == UNIT_ATTENTION &&
				sshdr.asc == 0x28) {
			if (!spintime) {
				spintime_expire = jiffies + 5 * HZ;
				spintime = 1;
			}
			/* Wait 1 second for next try */
			FUNC3(1000);
		} else {
			/* we don't understand the sense code, so it's
			 * probably pointless to loop */
			if(!spintime) {
				FUNC10(KERN_NOTICE, sdkp, "Unit Not Ready\n");
				FUNC9(sdkp, &sshdr);
			}
			break;
		}
				
	} while (spintime && FUNC11(jiffies, spintime_expire));

	if (spintime) {
		if (FUNC7(the_result))
			FUNC4("ready\n");
		else
			FUNC4("not responding...\n");
	}
}