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
struct spi_master {int dummy; } ;
struct TYPE_2__ {void* platform_data; } ;
struct spi_device {int /*<<< orphan*/ * controller_state; int /*<<< orphan*/  controller_data; TYPE_1__ dev; int /*<<< orphan*/  modalias; int /*<<< orphan*/  irq; int /*<<< orphan*/  mode; int /*<<< orphan*/  max_speed_hz; int /*<<< orphan*/  chip_select; } ;
struct spi_board_info {int /*<<< orphan*/  controller_data; scalar_t__ platform_data; int /*<<< orphan*/  modalias; int /*<<< orphan*/  irq; int /*<<< orphan*/  mode; int /*<<< orphan*/  max_speed_hz; int /*<<< orphan*/  chip_select; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct spi_device*) ; 
 struct spi_device* FUNC2 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

struct spi_device *FUNC6(struct spi_master *master,
				  struct spi_board_info *chip)
{
	struct spi_device	*proxy;
	int			status;

	/* NOTE:  caller did any chip->bus_num checks necessary.
	 *
	 * Also, unless we change the return value convention to use
	 * error-or-pointer (not NULL-or-pointer), troubleshootability
	 * suggests syslogged diagnostics are best here (ugh).
	 */

	proxy = FUNC2(master);
	if (!proxy)
		return NULL;

	FUNC0(FUNC5(chip->modalias) >= sizeof(proxy->modalias));

	proxy->chip_select = chip->chip_select;
	proxy->max_speed_hz = chip->max_speed_hz;
	proxy->mode = chip->mode;
	proxy->irq = chip->irq;
	FUNC4(proxy->modalias, chip->modalias, sizeof(proxy->modalias));
	proxy->dev.platform_data = (void *) chip->platform_data;
	proxy->controller_data = chip->controller_data;
	proxy->controller_state = NULL;

	status = FUNC1(proxy);
	if (status < 0) {
		FUNC3(proxy);
		return NULL;
	}

	return proxy;
}