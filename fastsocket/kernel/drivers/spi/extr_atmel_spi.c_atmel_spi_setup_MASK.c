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
typedef  int u32 ;
struct spi_device {unsigned int bits_per_word; int chip_select; int mode; int /*<<< orphan*/  dev; struct atmel_spi_device* controller_state; scalar_t__ controller_data; int /*<<< orphan*/  max_speed_hz; TYPE_1__* master; } ;
struct atmel_spi_device {unsigned int npcs_pin; int csr; } ;
struct atmel_spi {int /*<<< orphan*/  lock; struct spi_device* stay; int /*<<< orphan*/  clk; scalar_t__ stopping; } ;
struct TYPE_2__ {int num_chipselect; } ;

/* Variables and functions */
 int /*<<< orphan*/  BITS ; 
 int /*<<< orphan*/  CPOL ; 
 scalar_t__ CSR0 ; 
 int FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DLYBCT ; 
 int /*<<< orphan*/  DLYBS ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ESHUTDOWN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NCPHA ; 
 int /*<<< orphan*/  SCBR ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int SPI_CPHA ; 
 int SPI_CPOL ; 
 int SPI_CS_HIGH ; 
 int SPI_SCBR_SIZE ; 
 int /*<<< orphan*/  FUNC3 () ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct atmel_spi*,struct spi_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,int) ; 
 int FUNC9 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct atmel_spi_device*) ; 
 struct atmel_spi_device* FUNC11 (int,int /*<<< orphan*/ ) ; 
 struct atmel_spi* FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (struct atmel_spi*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC16(struct spi_device *spi)
{
	struct atmel_spi	*as;
	struct atmel_spi_device	*asd;
	u32			scbr, csr;
	unsigned int		bits = spi->bits_per_word;
	unsigned long		bus_hz;
	unsigned int		npcs_pin;
	int			ret;

	as = FUNC12(spi->master);

	if (as->stopping)
		return -ESHUTDOWN;

	if (spi->chip_select > spi->master->num_chipselect) {
		FUNC6(&spi->dev,
				"setup: invalid chipselect %u (%u defined)\n",
				spi->chip_select, spi->master->num_chipselect);
		return -EINVAL;
	}

	if (bits < 8 || bits > 16) {
		FUNC6(&spi->dev,
				"setup: invalid bits_per_word %u (8 to 16)\n",
				bits);
		return -EINVAL;
	}

	/* see notes above re chipselect */
	if (!FUNC3()
			&& spi->chip_select == 0
			&& (spi->mode & SPI_CS_HIGH)) {
		FUNC6(&spi->dev, "setup: can't be active-high\n");
		return -EINVAL;
	}

	/* v1 chips start out at half the peripheral bus speed. */
	bus_hz = FUNC4(as->clk);
	if (!FUNC3())
		bus_hz /= 2;

	if (spi->max_speed_hz) {
		/*
		 * Calculate the lowest divider that satisfies the
		 * constraint, assuming div32/fdiv/mbz == 0.
		 */
		scbr = FUNC0(bus_hz, spi->max_speed_hz);

		/*
		 * If the resulting divider doesn't fit into the
		 * register bitfield, we can't satisfy the constraint.
		 */
		if (scbr >= (1 << SPI_SCBR_SIZE)) {
			FUNC6(&spi->dev,
				"setup: %d Hz too slow, scbr %u; min %ld Hz\n",
				spi->max_speed_hz, scbr, bus_hz/255);
			return -EINVAL;
		}
	} else
		/* speed zero means "as slow as possible" */
		scbr = 0xff;

	csr = FUNC1(SCBR, scbr) | FUNC1(BITS, bits - 8);
	if (spi->mode & SPI_CPOL)
		csr |= FUNC2(CPOL);
	if (!(spi->mode & SPI_CPHA))
		csr |= FUNC2(NCPHA);

	/* DLYBS is mostly irrelevant since we manage chipselect using GPIOs.
	 *
	 * DLYBCT would add delays between words, slowing down transfers.
	 * It could potentially be useful to cope with DMA bottlenecks, but
	 * in those cases it's probably best to just use a lower bitrate.
	 */
	csr |= FUNC1(DLYBS, 0);
	csr |= FUNC1(DLYBCT, 0);

	/* chipselect must have been muxed as GPIO (e.g. in board setup) */
	npcs_pin = (unsigned int)spi->controller_data;
	asd = spi->controller_state;
	if (!asd) {
		asd = FUNC11(sizeof(struct atmel_spi_device), GFP_KERNEL);
		if (!asd)
			return -ENOMEM;

		ret = FUNC9(npcs_pin, FUNC7(&spi->dev));
		if (ret) {
			FUNC10(asd);
			return ret;
		}

		asd->npcs_pin = npcs_pin;
		spi->controller_state = asd;
		FUNC8(npcs_pin, !(spi->mode & SPI_CS_HIGH));
	} else {
		unsigned long		flags;

		FUNC14(&as->lock, flags);
		if (as->stay == spi)
			as->stay = NULL;
		FUNC5(as, spi);
		FUNC15(&as->lock, flags);
	}

	asd->csr = csr;

	FUNC6(&spi->dev,
		"setup: %lu Hz bpw %u mode 0x%x -> csr%d %08x\n",
		bus_hz / scbr, bits, spi->mode, spi->chip_select, csr);

	if (!FUNC3())
		FUNC13(as, CSR0 + 4 * spi->chip_select, csr);

	return 0;
}