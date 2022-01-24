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
struct ata_host {int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 unsigned int FUNC2 (struct ata_host*) ; 
 unsigned int FUNC3 (struct ata_host*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_instance)
{
	struct ata_host *host = dev_instance;
	unsigned int handled = 0;

	FUNC1("ENTER\n");

	FUNC4(&host->lock);
	handled  = FUNC3(host) | FUNC2(host);
	FUNC5(&host->lock);

	FUNC1("EXIT\n");

	return FUNC0(handled);
}