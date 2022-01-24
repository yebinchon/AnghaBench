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
struct spi_device {int /*<<< orphan*/  dev; } ;
struct ads7846 {int is_suspended; int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  pm_message_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ads7846*) ; 
 struct ads7846* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct spi_device *spi, pm_message_t message)
{
	struct ads7846 *ts = FUNC1(&spi->dev);

	FUNC2(&ts->lock);

	ts->is_suspended = 1;
	FUNC0(ts);

	FUNC3(&ts->lock);

	return 0;

}