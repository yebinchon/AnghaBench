#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct spi_master {int dummy; } ;
struct TYPE_9__ {TYPE_2__* master; int /*<<< orphan*/ * txrx_word; int /*<<< orphan*/  chipselect; } ;
struct sh_sci_spi {TYPE_4__ bitbang; int /*<<< orphan*/  membase; int /*<<< orphan*/  val; TYPE_1__* info; } ;
struct resource {scalar_t__ start; scalar_t__ end; } ;
struct TYPE_10__ {TYPE_1__* platform_data; } ;
struct platform_device {TYPE_5__ dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  num_chipselect; int /*<<< orphan*/  bus_num; } ;
struct TYPE_7__ {int /*<<< orphan*/  num_chipselect; int /*<<< orphan*/  bus_num; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  PIN_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct sh_sci_spi*) ; 
 size_t SPI_MODE_0 ; 
 size_t SPI_MODE_1 ; 
 size_t SPI_MODE_2 ; 
 size_t SPI_MODE_3 ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct resource* FUNC5 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,struct sh_sci_spi*) ; 
 int /*<<< orphan*/  FUNC7 (struct sh_sci_spi*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  sh_sci_spi_chipselect ; 
 int /*<<< orphan*/  sh_sci_spi_txrx_mode0 ; 
 int /*<<< orphan*/  sh_sci_spi_txrx_mode1 ; 
 int /*<<< orphan*/  sh_sci_spi_txrx_mode2 ; 
 int /*<<< orphan*/  sh_sci_spi_txrx_mode3 ; 
 struct spi_master* FUNC8 (TYPE_5__*,int) ; 
 int FUNC9 (TYPE_4__*) ; 
 TYPE_2__* FUNC10 (struct spi_master*) ; 
 struct sh_sci_spi* FUNC11 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC13(struct platform_device *dev)
{
	struct resource	*r;
	struct spi_master *master;
	struct sh_sci_spi *sp;
	int ret;

	master = FUNC8(&dev->dev, sizeof(struct sh_sci_spi));
	if (master == NULL) {
		FUNC1(&dev->dev, "failed to allocate spi master\n");
		ret = -ENOMEM;
		goto err0;
	}

	sp = FUNC11(master);

	FUNC6(dev, sp);
	sp->info = dev->dev.platform_data;

	/* setup spi bitbang adaptor */
	sp->bitbang.master = FUNC10(master);
	sp->bitbang.master->bus_num = sp->info->bus_num;
	sp->bitbang.master->num_chipselect = sp->info->num_chipselect;
	sp->bitbang.chipselect = sh_sci_spi_chipselect;

	sp->bitbang.txrx_word[SPI_MODE_0] = sh_sci_spi_txrx_mode0;
	sp->bitbang.txrx_word[SPI_MODE_1] = sh_sci_spi_txrx_mode1;
	sp->bitbang.txrx_word[SPI_MODE_2] = sh_sci_spi_txrx_mode2;
	sp->bitbang.txrx_word[SPI_MODE_3] = sh_sci_spi_txrx_mode3;

	r = FUNC5(dev, IORESOURCE_MEM, 0);
	if (r == NULL) {
		ret = -ENOENT;
		goto err1;
	}
	sp->membase = FUNC3(r->start, r->end - r->start + 1);
	if (!sp->membase) {
		ret = -ENXIO;
		goto err1;
	}
	sp->val = FUNC2(FUNC0(sp));
	FUNC7(sp, PIN_INIT, 1);

	ret = FUNC9(&sp->bitbang);
	if (!ret)
		return 0;

	FUNC7(sp, PIN_INIT, 0);
	FUNC4(sp->membase);
 err1:
	FUNC12(sp->bitbang.master);
 err0:
	return ret;
}