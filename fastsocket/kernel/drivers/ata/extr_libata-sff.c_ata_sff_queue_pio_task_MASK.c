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
struct ata_port {int /*<<< orphan*/  sff_pio_task; } ;

/* Variables and functions */
 int /*<<< orphan*/  ata_sff_wq ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC2(struct ata_port *ap, unsigned long delay)
{
	/* may fail if ata_sff_flush_pio_task() in progress */
	FUNC1(ata_sff_wq, &ap->sff_pio_task,
			   FUNC0(delay));
}