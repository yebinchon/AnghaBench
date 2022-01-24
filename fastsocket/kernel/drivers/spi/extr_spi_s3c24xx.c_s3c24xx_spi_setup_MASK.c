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
struct spi_device {struct s3c24xx_spi_devstate* controller_state; int /*<<< orphan*/  dev; } ;
struct s3c24xx_spi_devstate {int hz; int /*<<< orphan*/  spcon; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  (* chipselect ) (struct spi_device*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  busy; } ;
struct s3c24xx_spi {TYPE_1__ bitbang; } ;

/* Variables and functions */
 int /*<<< orphan*/  BITBANG_CS_INACTIVE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SPCON_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct s3c24xx_spi_devstate* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct spi_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct spi_device*,int /*<<< orphan*/ ) ; 
 struct s3c24xx_spi* FUNC6 (struct spi_device*) ; 

__attribute__((used)) static int FUNC7(struct spi_device *spi)
{
	struct s3c24xx_spi_devstate *cs = spi->controller_state;
	struct s3c24xx_spi *hw = FUNC6(spi);
	int ret;

	/* allocate settings on the first call */
	if (!cs) {
		cs = FUNC1(sizeof(struct s3c24xx_spi_devstate), GFP_KERNEL);
		if (!cs) {
			FUNC0(&spi->dev, "no memory for controller state\n");
			return -ENOMEM;
		}

		cs->spcon = SPCON_DEFAULT;
		cs->hz = -1;
		spi->controller_state = cs;
	}

	/* initialise the state from the device */
	ret = FUNC2(spi, NULL);
	if (ret)
		return ret;

	FUNC3(&hw->bitbang.lock);
	if (!hw->bitbang.busy) {
		hw->bitbang.chipselect(spi, BITBANG_CS_INACTIVE);
		/* need to ndelay for 0.5 clocktick ? */
	}
	FUNC4(&hw->bitbang.lock);

	return 0;
}