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
struct spi_message {int /*<<< orphan*/  queue; int /*<<< orphan*/  status; scalar_t__ actual_length; } ;
struct spi_device {int /*<<< orphan*/  master; } ;
struct mpc8xxx_spi {int /*<<< orphan*/  lock; int /*<<< orphan*/  work; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINPROGRESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct mpc8xxx_spi* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct spi_device *spi,
				struct spi_message *m)
{
	struct mpc8xxx_spi *mpc8xxx_spi = FUNC2(spi->master);
	unsigned long flags;

	m->actual_length = 0;
	m->status = -EINPROGRESS;

	FUNC3(&mpc8xxx_spi->lock, flags);
	FUNC0(&m->queue, &mpc8xxx_spi->queue);
	FUNC1(mpc8xxx_spi->workqueue, &mpc8xxx_spi->work);
	FUNC4(&mpc8xxx_spi->lock, flags);

	return 0;
}