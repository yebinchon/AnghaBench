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
struct device {int dummy; } ;
struct ata_port_operations {int dummy; } ;
struct ata_host {struct ata_port_operations* ops; struct device* dev; int /*<<< orphan*/  eh_mutex; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct ata_host *host, struct device *dev,
		   struct ata_port_operations *ops)
{
	FUNC1(&host->lock);
	FUNC0(&host->eh_mutex);
	host->dev = dev;
	host->ops = ops;
}