#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct spi_master {int bus_num; int num_chipselect; } ;
struct parport {int /*<<< orphan*/  name; TYPE_1__* physport; } ;
struct pardevice {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  master; int /*<<< orphan*/ * txrx_word; int /*<<< orphan*/  chipselect; } ;
struct butterfly {TYPE_4__ bitbang; struct pardevice* pd; struct parport* port; TYPE_2__* dataflash; TYPE_3__* info; int /*<<< orphan*/  lastbyte; } ;
struct TYPE_7__ {int max_speed_hz; int chip_select; struct butterfly* controller_data; int /*<<< orphan*/ * platform_data; int /*<<< orphan*/  modalias; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {struct device* dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 size_t SPI_MODE_0 ; 
 struct butterfly* butterfly ; 
 int /*<<< orphan*/  butterfly_chipselect ; 
 int /*<<< orphan*/  butterfly_nreset ; 
 int /*<<< orphan*/  butterfly_txrx_word_mode0 ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  flash ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct pardevice*) ; 
 int /*<<< orphan*/  FUNC3 (struct parport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pardevice* FUNC4 (struct parport*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct butterfly*) ; 
 int /*<<< orphan*/  FUNC5 (struct pardevice*) ; 
 int /*<<< orphan*/  FUNC6 (struct pardevice*) ; 
 int /*<<< orphan*/  FUNC7 (struct parport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 struct spi_master* FUNC10 (struct device*,int) ; 
 int FUNC11 (TYPE_4__*) ; 
 int /*<<< orphan*/  spi_cs_bit ; 
 int /*<<< orphan*/  FUNC12 (struct spi_master*) ; 
 struct butterfly* FUNC13 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC15 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  vcc_bits ; 

__attribute__((used)) static void FUNC17(struct parport *p)
{
	struct pardevice	*pd;
	int			status;
	struct butterfly	*pp;
	struct spi_master	*master;
	struct device		*dev = p->physport->dev;

	if (butterfly || !dev)
		return;

	/* REVISIT:  this just _assumes_ a butterfly is there ... no probe,
	 * and no way to be selective about what it binds to.
	 */

	master = FUNC10(dev, sizeof *pp);
	if (!master) {
		status = -ENOMEM;
		goto done;
	}
	pp = FUNC13(master);

	/*
	 * SPI and bitbang hookup
	 *
	 * use default setup(), cleanup(), and transfer() methods; and
	 * only bother implementing mode 0.  Start it later.
	 */
	master->bus_num = 42;
	master->num_chipselect = 2;

	pp->bitbang.master = FUNC12(master);
	pp->bitbang.chipselect = butterfly_chipselect;
	pp->bitbang.txrx_word[SPI_MODE_0] = butterfly_txrx_word_mode0;

	/*
	 * parport hookup
	 */
	pp->port = p;
	pd = FUNC4(p, "spi_butterfly",
			NULL, NULL, NULL,
			0 /* FLAGS */, pp);
	if (!pd) {
		status = -ENOMEM;
		goto clean0;
	}
	pp->pd = pd;

	status = FUNC2(pd);
	if (status < 0)
		goto clean1;

	/*
	 * Butterfly reset, powerup, run firmware
	 */
	FUNC8("%s: powerup/reset Butterfly\n", p->name);

	/* nCS for dataflash (this bit is inverted on output) */
	FUNC3(pp->port, spi_cs_bit, 0);

	/* stabilize power with chip in reset (nRESET), and
	 * spi_sck_bit clear (CPOL=0)
	 */
	pp->lastbyte |= vcc_bits;
	FUNC7(pp->port, pp->lastbyte);
	FUNC1(5);

	/* take it out of reset; assume long reset delay */
	pp->lastbyte |= butterfly_nreset;
	FUNC7(pp->port, pp->lastbyte);
	FUNC1(100);


	/*
	 * Start SPI ... for now, hide that we're two physical busses.
	 */
	status = FUNC11(&pp->bitbang);
	if (status < 0)
		goto clean2;

	/* Bus 1 lets us talk to at45db041b (firmware disables AVR SPI), AVR
	 * (firmware resets at45, acts as spi slave) or neither (we ignore
	 * both, AVR uses AT45).  Here we expect firmware for the first option.
	 */

	pp->info[0].max_speed_hz = 15 * 1000 * 1000;
	FUNC16(pp->info[0].modalias, "mtd_dataflash");
	pp->info[0].platform_data = &flash;
	pp->info[0].chip_select = 1;
	pp->info[0].controller_data = pp;
	pp->dataflash = FUNC15(pp->bitbang.master, &pp->info[0]);
	if (pp->dataflash)
		FUNC8("%s: dataflash at %s\n", p->name,
				FUNC0(&pp->dataflash->dev));

	// dev_info(_what?_, ...)
	FUNC9("%s: AVR Butterfly\n", p->name);
	butterfly = pp;
	return;

clean2:
	/* turn off VCC */
	FUNC7(pp->port, 0);

	FUNC5(pp->pd);
clean1:
	FUNC6(pd);
clean0:
	(void) FUNC14(pp->bitbang.master);
done:
	FUNC8("%s: butterfly probe, fail %d\n", p->name, status);
}