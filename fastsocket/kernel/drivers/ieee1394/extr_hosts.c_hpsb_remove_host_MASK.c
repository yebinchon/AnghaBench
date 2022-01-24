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
struct hpsb_host {int is_shutdown; int /*<<< orphan*/  device; int /*<<< orphan*/  host_dev; int /*<<< orphan*/ * driver; int /*<<< orphan*/  delayed_reset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dummy_driver ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct hpsb_host*) ; 

void FUNC4(struct hpsb_host *host)
{
	host->is_shutdown = 1;

	FUNC0(&host->delayed_reset);
	FUNC2();

	host->driver = &dummy_driver;
	FUNC3(host);

	FUNC1(&host->host_dev);
	FUNC1(&host->device);
}