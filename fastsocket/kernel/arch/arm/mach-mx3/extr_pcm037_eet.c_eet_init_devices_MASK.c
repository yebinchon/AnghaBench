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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ PCM037_EET ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mxc_spi_device0 ; 
 int /*<<< orphan*/  pcm037_eet_pins ; 
 int /*<<< orphan*/  pcm037_gpio_keys_device ; 
 int /*<<< orphan*/  pcm037_spi1_master ; 
 int /*<<< orphan*/  pcm037_spi_dev ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(void)
{
	if (!FUNC1() || FUNC4() != PCM037_EET)
		return 0;

	FUNC2(pcm037_eet_pins,
				FUNC0(pcm037_eet_pins), "pcm037_eet");

	/* SPI */
	FUNC6(pcm037_spi_dev, FUNC0(pcm037_spi_dev));
#if defined(CONFIG_SPI_IMX) || defined(CONFIG_SPI_IMX_MODULE)
	mxc_register_device(&mxc_spi_device0, &pcm037_spi1_master);
#endif

	FUNC5(&pcm037_gpio_keys_device);

	return 0;
}