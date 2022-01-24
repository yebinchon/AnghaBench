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
struct spi_mpc8xxx_cs {int hw_mode; } ;
struct spi_device {int mode; int /*<<< orphan*/  master; struct spi_mpc8xxx_cs* controller_state; int /*<<< orphan*/  max_speed_hz; } ;
struct mpc8xxx_spi {TYPE_1__* base; } ;
struct TYPE_2__ {int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int SPI_CPHA ; 
 int SPI_CPOL ; 
 int SPI_LOOP ; 
 int SPI_LSB_FIRST ; 
 int SPMODE_CI_INACTIVEHIGH ; 
 int SPMODE_CP_BEGIN_EDGECLK ; 
 int SPMODE_LOOP ; 
 int SPMODE_REV ; 
 struct spi_mpc8xxx_cs* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct spi_device*,int /*<<< orphan*/ *) ; 
 struct mpc8xxx_spi* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct spi_device *spi)
{
	struct mpc8xxx_spi *mpc8xxx_spi;
	int retval;
	u32 hw_mode;
	struct spi_mpc8xxx_cs	*cs = spi->controller_state;

	if (!spi->max_speed_hz)
		return -EINVAL;

	if (!cs) {
		cs = FUNC0(sizeof *cs, GFP_KERNEL);
		if (!cs)
			return -ENOMEM;
		spi->controller_state = cs;
	}
	mpc8xxx_spi = FUNC3(spi->master);

	hw_mode = cs->hw_mode; /* Save orginal settings */
	cs->hw_mode = FUNC1(&mpc8xxx_spi->base->mode);
	/* mask out bits we are going to set */
	cs->hw_mode &= ~(SPMODE_CP_BEGIN_EDGECLK | SPMODE_CI_INACTIVEHIGH
			 | SPMODE_REV | SPMODE_LOOP);

	if (spi->mode & SPI_CPHA)
		cs->hw_mode |= SPMODE_CP_BEGIN_EDGECLK;
	if (spi->mode & SPI_CPOL)
		cs->hw_mode |= SPMODE_CI_INACTIVEHIGH;
	if (!(spi->mode & SPI_LSB_FIRST))
		cs->hw_mode |= SPMODE_REV;
	if (spi->mode & SPI_LOOP)
		cs->hw_mode |= SPMODE_LOOP;

	retval = FUNC2(spi, NULL);
	if (retval < 0) {
		cs->hw_mode = hw_mode; /* Restore settings */
		return retval;
	}
	return 0;
}