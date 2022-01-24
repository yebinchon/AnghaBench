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
struct sym_data {int /*<<< orphan*/  pdev; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int DEBUG_FLAGS ; 
 int DEBUG_TINY ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct sym_data* FUNC2 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct Scsi_Host*) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	struct Scsi_Host *shost = dev_id;
	struct sym_data *sym_data = FUNC2(shost);
	irqreturn_t result;

	/* Avoid spinloop trying to handle interrupts on frozen device */
	if (FUNC0(sym_data->pdev))
		return IRQ_NONE;

	if (DEBUG_FLAGS & DEBUG_TINY) FUNC1 ("[");

	FUNC3(shost->host_lock);
	result = FUNC5(shost);
	FUNC4(shost->host_lock);

	if (DEBUG_FLAGS & DEBUG_TINY) FUNC1 ("]\n");

	return result;
}