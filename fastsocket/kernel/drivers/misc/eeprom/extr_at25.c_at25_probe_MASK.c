#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct spi_eeprom {int flags; int byte_len; int /*<<< orphan*/  page_size; int /*<<< orphan*/  name; int /*<<< orphan*/  context; int /*<<< orphan*/  (* setup ) (TYPE_3__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_10__ {int /*<<< orphan*/  kobj; struct spi_eeprom* platform_data; } ;
struct spi_device {TYPE_4__ dev; } ;
struct TYPE_7__ {char* name; int /*<<< orphan*/  mode; } ;
struct TYPE_8__ {int size; TYPE_1__ attr; int /*<<< orphan*/  write; int /*<<< orphan*/  read; } ;
struct TYPE_9__ {int /*<<< orphan*/  write; int /*<<< orphan*/  read; } ;
struct at25_data {int addrlen; struct spi_eeprom chip; TYPE_2__ bin; TYPE_3__ mem; int /*<<< orphan*/  spi; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT25_RDSR ; 
 int AT25_SR_nRDY ; 
 int EE_ADDR1 ; 
 int EE_ADDR2 ; 
 int EE_ADDR3 ; 
 int EE_READONLY ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  S_IRUSR ; 
 int /*<<< orphan*/  S_IWUSR ; 
 int /*<<< orphan*/  at25_bin_read ; 
 int /*<<< orphan*/  at25_bin_write ; 
 int /*<<< orphan*/  at25_mem_read ; 
 int /*<<< orphan*/  at25_mem_write ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,char*,int,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,struct at25_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct at25_data*) ; 
 struct at25_data* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct spi_device*) ; 
 int FUNC7 (struct spi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,TYPE_2__*) ; 

__attribute__((used)) static int FUNC10(struct spi_device *spi)
{
	struct at25_data	*at25 = NULL;
	const struct spi_eeprom *chip;
	int			err;
	int			sr;
	int			addrlen;

	/* Chip description */
	chip = spi->dev.platform_data;
	if (!chip) {
		FUNC0(&spi->dev, "no chip description\n");
		err = -ENODEV;
		goto fail;
	}

	/* For now we only support 8/16/24 bit addressing */
	if (chip->flags & EE_ADDR1)
		addrlen = 1;
	else if (chip->flags & EE_ADDR2)
		addrlen = 2;
	else if (chip->flags & EE_ADDR3)
		addrlen = 3;
	else {
		FUNC0(&spi->dev, "unsupported address type\n");
		err = -EINVAL;
		goto fail;
	}

	/* Ping the chip ... the status register is pretty portable,
	 * unlike probing manufacturer IDs.  We do expect that system
	 * firmware didn't write it in the past few milliseconds!
	 */
	sr = FUNC7(spi, AT25_RDSR);
	if (sr < 0 || sr & AT25_SR_nRDY) {
		FUNC0(&spi->dev, "rdsr --> %d (%02x)\n", sr, sr);
		err = -ENXIO;
		goto fail;
	}

	if (!(at25 = FUNC4(sizeof *at25, GFP_KERNEL))) {
		err = -ENOMEM;
		goto fail;
	}

	FUNC5(&at25->lock);
	at25->chip = *chip;
	at25->spi = FUNC6(spi);
	FUNC2(&spi->dev, at25);
	at25->addrlen = addrlen;

	/* Export the EEPROM bytes through sysfs, since that's convenient.
	 * And maybe to other kernel code; it might hold a board's Ethernet
	 * address, or board-specific calibration data generated on the
	 * manufacturing floor.
	 *
	 * Default to root-only access to the data; EEPROMs often hold data
	 * that's sensitive for read and/or write, like ethernet addresses,
	 * security codes, board-specific manufacturing calibrations, etc.
	 */
	at25->bin.attr.name = "eeprom";
	at25->bin.attr.mode = S_IRUSR;
	at25->bin.read = at25_bin_read;
	at25->mem.read = at25_mem_read;

	at25->bin.size = at25->chip.byte_len;
	if (!(chip->flags & EE_READONLY)) {
		at25->bin.write = at25_bin_write;
		at25->bin.attr.mode |= S_IWUSR;
		at25->mem.write = at25_mem_write;
	}

	err = FUNC9(&spi->dev.kobj, &at25->bin);
	if (err)
		goto fail;

	if (chip->setup)
		chip->setup(&at25->mem, chip->context);

	FUNC1(&spi->dev, "%Zd %s %s eeprom%s, pagesize %u\n",
		(at25->bin.size < 1024)
			? at25->bin.size
			: (at25->bin.size / 1024),
		(at25->bin.size < 1024) ? "Byte" : "KByte",
		at25->chip.name,
		(chip->flags & EE_READONLY) ? " (readonly)" : "",
		at25->chip.page_size);
	return 0;
fail:
	FUNC0(&spi->dev, "probe err %d\n", err);
	FUNC3(at25);
	return err;
}