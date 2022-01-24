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
struct spi_device {struct atmel_spi_device* controller_state; int /*<<< orphan*/  controller_data; int /*<<< orphan*/  master; } ;
struct atmel_spi_device {int dummy; } ;
struct atmel_spi {int /*<<< orphan*/  lock; struct spi_device* stay; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct atmel_spi*,struct spi_device*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct atmel_spi_device*) ; 
 struct atmel_spi* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct spi_device *spi)
{
	struct atmel_spi	*as = FUNC3(spi->master);
	struct atmel_spi_device	*asd = spi->controller_state;
	unsigned		gpio = (unsigned) spi->controller_data;
	unsigned long		flags;

	if (!asd)
		return;

	FUNC4(&as->lock, flags);
	if (as->stay == spi) {
		as->stay = NULL;
		FUNC0(as, spi);
	}
	FUNC5(&as->lock, flags);

	spi->controller_state = NULL;
	FUNC1(gpio);
	FUNC2(asd);
}