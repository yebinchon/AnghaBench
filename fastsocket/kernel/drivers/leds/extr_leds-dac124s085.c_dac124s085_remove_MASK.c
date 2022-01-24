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
struct spi_device {int dummy; } ;
struct dac124s085 {TYPE_1__* leds; } ;
struct TYPE_2__ {int /*<<< orphan*/  work; int /*<<< orphan*/  ldev; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dac124s085*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct dac124s085* FUNC4 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct spi_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct spi_device *spi)
{
	struct dac124s085	*dac = FUNC4(spi);
	int i;

	for (i = 0; i < FUNC0(dac->leds); i++) {
		FUNC3(&dac->leds[i].ldev);
		FUNC1(&dac->leds[i].work);
	}

	FUNC5(spi, NULL);
	FUNC2(dac);

	return 0;
}