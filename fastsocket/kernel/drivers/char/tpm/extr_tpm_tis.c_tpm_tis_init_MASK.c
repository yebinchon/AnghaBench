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
typedef  int u32 ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {unsigned int irq; scalar_t__ iobase; int /*<<< orphan*/  list; int /*<<< orphan*/  locality; TYPE_1__ miscdev; int /*<<< orphan*/  int_queue; int /*<<< orphan*/  read_queue; void* timeout_d; void* timeout_c; void* timeout_b; void* timeout_a; } ;
struct tpm_chip {int /*<<< orphan*/  dev; TYPE_2__ vendor; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  resource_size_t ;

/* Variables and functions */
 int EIO ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  TIS_LONG_TIMEOUT ; 
 int /*<<< orphan*/  TIS_SHORT_TIMEOUT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int TPM_GLOBAL_INT_ENABLE ; 
 int TPM_INTF_BURST_COUNT_STATIC ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int TPM_INTF_CMD_READY_INT ; 
 int TPM_INTF_DATA_AVAIL_INT ; 
 int TPM_INTF_INT_EDGE_FALLING ; 
 int TPM_INTF_INT_EDGE_RISING ; 
 int TPM_INTF_INT_LEVEL_HIGH ; 
 int TPM_INTF_INT_LEVEL_LOW ; 
 int TPM_INTF_LOCALITY_CHANGE_INT ; 
 int TPM_INTF_STS_VALID_INT ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int,struct tpm_chip*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ interrupts ; 
 int FUNC11 (scalar_t__) ; 
 unsigned int FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int,scalar_t__) ; 
 scalar_t__ itpm ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC18 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tpm_chip*) ; 
 scalar_t__ FUNC20 (struct tpm_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tis_chips ; 
 int /*<<< orphan*/  tis_int_handler ; 
 int /*<<< orphan*/  tis_int_probe ; 
 int /*<<< orphan*/  tis_lock ; 
 int /*<<< orphan*/  FUNC23 (struct tpm_chip*) ; 
 int /*<<< orphan*/  FUNC24 (struct tpm_chip*) ; 
 int /*<<< orphan*/  FUNC25 (struct tpm_chip*) ; 
 struct tpm_chip* FUNC26 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tpm_tis ; 

__attribute__((used)) static int FUNC28(struct device *dev, resource_size_t start,
			resource_size_t len, unsigned int irq)
{
	u32 vendor, intfcaps, intmask;
	int rc, i;
	struct tpm_chip *chip;

	if (!(chip = FUNC26(dev, &tpm_tis)))
		return -ENODEV;

	chip->vendor.iobase = FUNC13(start, len);
	if (!chip->vendor.iobase) {
		rc = -EIO;
		goto out_err;
	}

	/* Default timeouts */
	chip->vendor.timeout_a = FUNC18(TIS_SHORT_TIMEOUT);
	chip->vendor.timeout_b = FUNC18(TIS_LONG_TIMEOUT);
	chip->vendor.timeout_c = FUNC18(TIS_SHORT_TIMEOUT);
	chip->vendor.timeout_d = FUNC18(TIS_SHORT_TIMEOUT);

	if (FUNC20(chip, 0) != 0) {
		rc = -ENODEV;
		goto out_err;
	}

	vendor = FUNC11(chip->vendor.iobase + FUNC1(0));

	FUNC8(dev,
		 "1.2 TPM (device-id 0x%X, rev-id %d)\n",
		 vendor >> 16, FUNC12(chip->vendor.iobase + FUNC6(0)));

	if (itpm)
		FUNC8(dev, "Intel iTPM workaround enabled\n");


	/* Figure out the capabilities */
	intfcaps =
	    FUNC11(chip->vendor.iobase +
		     FUNC2(chip->vendor.locality));
	FUNC7(dev, "TPM interface capabilities (0x%x):\n",
		intfcaps);
	if (intfcaps & TPM_INTF_BURST_COUNT_STATIC)
		FUNC7(dev, "\tBurst Count Static\n");
	if (intfcaps & TPM_INTF_CMD_READY_INT)
		FUNC7(dev, "\tCommand Ready Int Support\n");
	if (intfcaps & TPM_INTF_INT_EDGE_FALLING)
		FUNC7(dev, "\tInterrupt Edge Falling\n");
	if (intfcaps & TPM_INTF_INT_EDGE_RISING)
		FUNC7(dev, "\tInterrupt Edge Rising\n");
	if (intfcaps & TPM_INTF_INT_LEVEL_LOW)
		FUNC7(dev, "\tInterrupt Level Low\n");
	if (intfcaps & TPM_INTF_INT_LEVEL_HIGH)
		FUNC7(dev, "\tInterrupt Level High\n");
	if (intfcaps & TPM_INTF_LOCALITY_CHANGE_INT)
		FUNC7(dev, "\tLocality Change Int Support\n");
	if (intfcaps & TPM_INTF_STS_VALID_INT)
		FUNC7(dev, "\tSts Valid Int Support\n");
	if (intfcaps & TPM_INTF_DATA_AVAIL_INT)
		FUNC7(dev, "\tData Avail Int Support\n");

	/* INTERRUPT Setup */
	FUNC10(&chip->vendor.read_queue);
	FUNC10(&chip->vendor.int_queue);

	intmask =
	    FUNC11(chip->vendor.iobase +
		     FUNC3(chip->vendor.locality));

	intmask |= TPM_INTF_CMD_READY_INT
	    | TPM_INTF_LOCALITY_CHANGE_INT | TPM_INTF_DATA_AVAIL_INT
	    | TPM_INTF_STS_VALID_INT;

	FUNC15(intmask,
		  chip->vendor.iobase +
		  FUNC3(chip->vendor.locality));
	if (interrupts)
		chip->vendor.irq = irq;
	if (interrupts && !chip->vendor.irq) {
		chip->vendor.irq =
		    FUNC12(chip->vendor.iobase +
			    FUNC5(chip->vendor.locality));

		for (i = 3; i < 16 && chip->vendor.irq == 0; i++) {
			FUNC16(i, chip->vendor.iobase +
				    FUNC5(chip->vendor.locality));
			if (FUNC19
			    (i, tis_int_probe, IRQF_SHARED,
			     chip->vendor.miscdev.name, chip) != 0) {
				FUNC8(chip->dev,
					 "Unable to request irq: %d for probe\n",
					 i);
				continue;
			}

			/* Clear all existing */
			FUNC15(FUNC11
				  (chip->vendor.iobase +
				   FUNC4(chip->vendor.locality)),
				  chip->vendor.iobase +
				  FUNC4(chip->vendor.locality));

			/* Turn on */
			FUNC15(intmask | TPM_GLOBAL_INT_ENABLE,
				  chip->vendor.iobase +
				  FUNC3(chip->vendor.locality));

			/* Generate Interrupts */
			FUNC24(chip);

			/* Turn off */
			FUNC15(intmask,
				  chip->vendor.iobase +
				  FUNC3(chip->vendor.locality));
			FUNC9(i, chip);
		}
	}
	if (chip->vendor.irq) {
		FUNC16(chip->vendor.irq,
			 chip->vendor.iobase +
			 FUNC5(chip->vendor.locality));
		if (FUNC19
		    (chip->vendor.irq, tis_int_handler, IRQF_SHARED,
		     chip->vendor.miscdev.name, chip) != 0) {
			FUNC8(chip->dev,
				 "Unable to request irq: %d for use\n",
				 chip->vendor.irq);
			chip->vendor.irq = 0;
		} else {
			/* Clear all existing */
			FUNC15(FUNC11
				  (chip->vendor.iobase +
				   FUNC4(chip->vendor.locality)),
				  chip->vendor.iobase +
				  FUNC4(chip->vendor.locality));

			/* Turn on */
			FUNC15(intmask | TPM_GLOBAL_INT_ENABLE,
				  chip->vendor.iobase +
				  FUNC3(chip->vendor.locality));
		}
	}

	FUNC0(&chip->vendor.list);
	FUNC21(&tis_lock);
	FUNC17(&chip->vendor.list, &tis_chips);
	FUNC22(&tis_lock);

	FUNC25(chip);
	FUNC23(chip);

	return 0;
out_err:
	if (chip->vendor.iobase)
		FUNC14(chip->vendor.iobase);
	FUNC27(chip->dev);
	return rc;
}