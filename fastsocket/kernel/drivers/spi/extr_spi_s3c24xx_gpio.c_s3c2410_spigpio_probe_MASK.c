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
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct spi_master {int dummy; } ;
struct s3c2410_spigpio_info {scalar_t__ pin_clk; scalar_t__ pin_mosi; scalar_t__ pin_miso; int /*<<< orphan*/  num_chipselect; int /*<<< orphan*/  bus_num; } ;
struct TYPE_7__ {TYPE_1__* master; int /*<<< orphan*/ * txrx_word; int /*<<< orphan*/  chipselect; } ;
struct s3c2410_spigpio {TYPE_3__ bitbang; struct s3c2410_spigpio_info* info; } ;
struct TYPE_8__ {struct s3c2410_spigpio_info* platform_data; } ;
struct platform_device {TYPE_4__ dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  num_chipselect; int /*<<< orphan*/  bus_num; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ S3C2410_GPA0 ; 
 scalar_t__ S3C2410_GPH10 ; 
 int /*<<< orphan*/  S3C2410_GPIO_INPUT ; 
 int /*<<< orphan*/  S3C2410_GPIO_OUTPUT ; 
 size_t SPI_MODE_0 ; 
 size_t SPI_MODE_1 ; 
 size_t SPI_MODE_2 ; 
 size_t SPI_MODE_3 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct platform_device*,struct s3c2410_spigpio*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s3c2410_spigpio_chipselect ; 
 int /*<<< orphan*/  s3c2410_spigpio_txrx_mode0 ; 
 int /*<<< orphan*/  s3c2410_spigpio_txrx_mode1 ; 
 int /*<<< orphan*/  s3c2410_spigpio_txrx_mode2 ; 
 int /*<<< orphan*/  s3c2410_spigpio_txrx_mode3 ; 
 struct spi_master* FUNC4 (TYPE_4__*,int) ; 
 int FUNC5 (TYPE_3__*) ; 
 TYPE_1__* FUNC6 (struct spi_master*) ; 
 struct s3c2410_spigpio* FUNC7 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *dev)
{
	struct s3c2410_spigpio_info *info;
	struct spi_master	*master;
	struct s3c2410_spigpio  *sp;
	int ret;

	master = FUNC4(&dev->dev, sizeof(struct s3c2410_spigpio));
	if (master == NULL) {
		FUNC0(&dev->dev, "failed to allocate spi master\n");
		ret = -ENOMEM;
		goto err;
	}

	sp = FUNC7(master);

	FUNC1(dev, sp);

	/* copy in the plkatform data */
	info = sp->info = dev->dev.platform_data;

	/* setup spi bitbang adaptor */
	sp->bitbang.master = FUNC6(master);
	sp->bitbang.master->bus_num = info->bus_num;
	sp->bitbang.master->num_chipselect = info->num_chipselect;
	sp->bitbang.chipselect = s3c2410_spigpio_chipselect;

	sp->bitbang.txrx_word[SPI_MODE_0] = s3c2410_spigpio_txrx_mode0;
	sp->bitbang.txrx_word[SPI_MODE_1] = s3c2410_spigpio_txrx_mode1;
	sp->bitbang.txrx_word[SPI_MODE_2] = s3c2410_spigpio_txrx_mode2;
	sp->bitbang.txrx_word[SPI_MODE_3] = s3c2410_spigpio_txrx_mode3;

	/* set state of spi pins, always assume that the clock is
	 * available, but do check the MOSI and MISO. */
	FUNC3(info->pin_clk, 0);
	FUNC2(info->pin_clk, S3C2410_GPIO_OUTPUT);

	if (info->pin_mosi < S3C2410_GPH10) {
		FUNC3(info->pin_mosi, 0);
		FUNC2(info->pin_mosi, S3C2410_GPIO_OUTPUT);
	}

	if (info->pin_miso != S3C2410_GPA0 && info->pin_miso < S3C2410_GPH10)
		FUNC2(info->pin_miso, S3C2410_GPIO_INPUT);

	ret = FUNC5(&sp->bitbang);
	if (ret)
		goto err_no_bitbang;

	return 0;

 err_no_bitbang:
	FUNC8(sp->bitbang.master);
 err:
	return ret;

}