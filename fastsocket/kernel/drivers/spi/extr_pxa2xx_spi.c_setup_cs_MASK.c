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
struct spi_device {int mode; int /*<<< orphan*/  dev; } ;
struct pxa2xx_spi_chip {int /*<<< orphan*/  gpio_cs; scalar_t__ cs_control; } ;
struct chip_data {int gpio_cs_inverted; int /*<<< orphan*/  gpio_cs; scalar_t__ cs_control; } ;

/* Variables and functions */
 int SPI_CS_HIGH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC5(struct spi_device *spi, struct chip_data *chip,
		    struct pxa2xx_spi_chip *chip_info)
{
	int err = 0;

	if (chip == NULL || chip_info == NULL)
		return 0;

	/* NOTE: setup() can be called multiple times, possibly with
	 * different chip_info, release previously requested GPIO
	 */
	if (FUNC3(chip->gpio_cs))
		FUNC2(chip->gpio_cs);

	/* If (*cs_control) is provided, ignore GPIO chip select */
	if (chip_info->cs_control) {
		chip->cs_control = chip_info->cs_control;
		return 0;
	}

	if (FUNC3(chip_info->gpio_cs)) {
		err = FUNC4(chip_info->gpio_cs, "SPI_CS");
		if (err) {
			FUNC0(&spi->dev, "failed to request chip select "
					"GPIO%d\n", chip_info->gpio_cs);
			return err;
		}

		chip->gpio_cs = chip_info->gpio_cs;
		chip->gpio_cs_inverted = spi->mode & SPI_CS_HIGH;

		err = FUNC1(chip->gpio_cs,
					!chip->gpio_cs_inverted);
	}

	return err;
}