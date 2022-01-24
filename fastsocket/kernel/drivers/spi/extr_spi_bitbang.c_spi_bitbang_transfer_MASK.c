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
struct spi_device {int /*<<< orphan*/  max_speed_hz; int /*<<< orphan*/  master; } ;
struct spi_bitbang {int /*<<< orphan*/  lock; int /*<<< orphan*/  work; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINPROGRESS ; 
 int ENETDOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct spi_bitbang* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC5(struct spi_device *spi, struct spi_message *m)
{
	struct spi_bitbang	*bitbang;
	unsigned long		flags;
	int			status = 0;

	m->actual_length = 0;
	m->status = -EINPROGRESS;

	bitbang = FUNC2(spi->master);

	FUNC3(&bitbang->lock, flags);
	if (!spi->max_speed_hz)
		status = -ENETDOWN;
	else {
		FUNC0(&m->queue, &bitbang->queue);
		FUNC1(bitbang->workqueue, &bitbang->work);
	}
	FUNC4(&bitbang->lock, flags);

	return status;
}