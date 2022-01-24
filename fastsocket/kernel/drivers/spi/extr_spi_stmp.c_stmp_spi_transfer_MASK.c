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
struct stmp_spi {int /*<<< orphan*/  lock; int /*<<< orphan*/  work; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  queue; } ;
struct spi_message {int /*<<< orphan*/  queue; int /*<<< orphan*/  status; } ;
struct spi_device {int /*<<< orphan*/  master; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINPROGRESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct stmp_spi* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct spi_device *spi, struct spi_message *m)
{
	struct stmp_spi *ss = FUNC2(spi->master);
	unsigned long flags;

	m->status = -EINPROGRESS;
	FUNC3(&ss->lock, flags);
	FUNC0(&m->queue, &ss->queue);
	FUNC1(ss->workqueue, &ss->work);
	FUNC4(&ss->lock, flags);
	return 0;
}