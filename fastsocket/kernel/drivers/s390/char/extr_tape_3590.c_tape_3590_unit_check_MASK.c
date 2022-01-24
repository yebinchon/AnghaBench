#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tape_request {scalar_t__ op; int /*<<< orphan*/  retries; } ;
struct TYPE_3__ {int block_position; } ;
struct tape_device {int cdev_id; TYPE_2__* cdev; TYPE_1__ blk_data; } ;
struct tape_3590_sense {int rc_rqc; int rac; } ;
struct irb {scalar_t__ ecw; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int EBUSY ; 
 int EIO ; 
 int EMEDIUMTYPE ; 
 int ENOMEDIUM ; 
 int ENOSPC ; 
 int EPERM ; 
 int /*<<< orphan*/  MS_UNLOADED ; 
 scalar_t__ TO_BLOCK ; 
 int /*<<< orphan*/  TO_CRYPT_OFF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (struct tape_device*,struct tape_request*,struct irb*) ; 
 int FUNC3 (struct tape_device*,struct tape_request*,struct irb*,int) ; 
 int FUNC4 (struct tape_device*,struct tape_request*,struct irb*,int) ; 
 int FUNC5 (struct tape_device*,struct tape_request*,struct irb*) ; 
 int FUNC6 (struct tape_device*,struct tape_request*,struct irb*) ; 
 int FUNC7 (struct tape_device*,struct tape_request*,struct irb*) ; 
 int FUNC8 (struct tape_device*,struct tape_request*,struct irb*) ; 
 int FUNC9 (struct tape_device*,struct tape_request*,struct irb*) ; 
 int FUNC10 (struct tape_device*,struct tape_request*,struct irb*) ; 
 int FUNC11 (struct tape_device*,struct tape_request*,struct irb*) ; 
 int /*<<< orphan*/  FUNC12 (struct tape_device*,struct irb*) ; 
 int /*<<< orphan*/  FUNC13 (struct tape_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct tape_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC15(struct tape_device *device, struct tape_request *request,
		     struct irb *irb)
{
	struct tape_3590_sense *sense;
	int rc;

#ifdef CONFIG_S390_TAPE_BLOCK
	if (request->op == TO_BLOCK) {
		/*
		 * Recovery for block device requests. Set the block_position
		 * to something invalid and retry.
		 */
		device->blk_data.block_position = -1;
		if (request->retries-- <= 0)
			return tape_3590_erp_failed(device, request, irb, -EIO);
		else
			return tape_3590_erp_retry(device, request, irb);
	}
#endif

	sense = (struct tape_3590_sense *) irb->ecw;

	FUNC0(6, "Unit Check: RQC = %x\n", sense->rc_rqc);

	/*
	 * First check all RC-QRCs where we want to do something special
	 *   - "break":     basic error recovery is done
	 *   - "goto out:": just print error message if available
	 */
	rc = -EIO;
	switch (sense->rc_rqc) {

	case 0x1110:
		FUNC12(device, irb);
		return FUNC7(device, request, irb);

	case 0x2011:
		FUNC12(device, irb);
		return FUNC6(device, request, irb);

	case 0x2230:
	case 0x2231:
		FUNC12(device, irb);
		return FUNC10(device, request, irb);
	case 0x2240:
		return FUNC2(device, request, irb);

	case 0x3010:
		FUNC0(2, "(%08x): Backward at Beginning of Partition\n",
			  device->cdev_id);
		return FUNC3(device, request, irb, -ENOSPC);
	case 0x3012:
		FUNC0(2, "(%08x): Forward at End of Partition\n",
			  device->cdev_id);
		return FUNC3(device, request, irb, -ENOSPC);
	case 0x3020:
		FUNC0(2, "(%08x): End of Data Mark\n", device->cdev_id);
		return FUNC3(device, request, irb, -ENOSPC);

	case 0x3122:
		FUNC0(2, "(%08x): Rewind Unload initiated\n",
			  device->cdev_id);
		return FUNC3(device, request, irb, -EIO);
	case 0x3123:
		FUNC0(2, "(%08x): Rewind Unload complete\n",
			  device->cdev_id);
		FUNC14(device, MS_UNLOADED);
		FUNC13(device, TO_CRYPT_OFF);
		return FUNC3(device, request, irb, 0);

	case 0x4010:
		/*
		 * print additional msg since default msg
		 * "device intervention" is not very meaningfull
		 */
		FUNC14(device, MS_UNLOADED);
		FUNC13(device, TO_CRYPT_OFF);
		return FUNC3(device, request, irb, -ENOMEDIUM);
	case 0x4012:		/* Device Long Busy */
		/* XXX: Also use long busy handling here? */
		FUNC0(6, "(%08x): LONG BUSY\n", device->cdev_id);
		FUNC12(device, irb);
		return FUNC3(device, request, irb, -EBUSY);
	case 0x4014:
		FUNC0(6, "(%08x): Crypto LONG BUSY\n", device->cdev_id);
		return FUNC5(device, request, irb);

	case 0x5010:
		if (sense->rac == 0xd0) {
			/* Swap */
			FUNC12(device, irb);
			return FUNC11(device, request, irb);
		}
		if (sense->rac == 0x26) {
			/* Read Opposite */
			FUNC12(device, irb);
			return FUNC8(device, request,
							   irb);
		}
		return FUNC3(device, request, irb, -EIO);
	case 0x5020:
	case 0x5021:
	case 0x5022:
	case 0x5040:
	case 0x5041:
	case 0x5042:
		FUNC12(device, irb);
		return FUNC11(device, request, irb);

	case 0x5110:
	case 0x5111:
		return FUNC3(device, request, irb, -EMEDIUMTYPE);

	case 0x5120:
	case 0x1120:
		FUNC14(device, MS_UNLOADED);
		FUNC13(device, TO_CRYPT_OFF);
		return FUNC3(device, request, irb, -ENOMEDIUM);

	case 0x6020:
		return FUNC3(device, request, irb, -EMEDIUMTYPE);

	case 0x8011:
		return FUNC3(device, request, irb, -EPERM);
	case 0x8013:
		FUNC1 (&device->cdev->dev, "A different host has privileged"
			" access to the tape unit\n");
		return FUNC3(device, request, irb, -EPERM);
	default:
		return FUNC3(device, request, irb, -EIO);
	}
}