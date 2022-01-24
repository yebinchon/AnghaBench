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
struct spi_lm70llp {int dummy; } ;
struct spi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct spi_lm70llp*) ; 
 int /*<<< orphan*/  FUNC1 (struct spi_lm70llp*) ; 
 struct spi_lm70llp* FUNC2 (struct spi_device*) ; 

__attribute__((used)) static void FUNC3(struct spi_device *spi, int value)
{
	struct spi_lm70llp *pp = FUNC2(spi);

	if (value)
		FUNC0(pp);
	else
		FUNC1(pp);
}