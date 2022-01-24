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
struct ata_port_operations {int /*<<< orphan*/  postreset; int /*<<< orphan*/  softreset; int /*<<< orphan*/  prereset; int /*<<< orphan*/ * hardreset; } ;
struct ata_port {int /*<<< orphan*/  link; struct ata_port_operations* ops; } ;
typedef  int /*<<< orphan*/ * ata_reset_fn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ata_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct ata_port *ap)
{
	struct ata_port_operations *ops = ap->ops;
	ata_reset_fn_t hardreset = ops->hardreset;

	/* ignore built-in hardreset if SCR access is not available */
	if (FUNC1(hardreset) && !FUNC2(&ap->link))
		hardreset = NULL;

	FUNC0(ap, ops->prereset, ops->softreset, hardreset, ops->postreset);
}