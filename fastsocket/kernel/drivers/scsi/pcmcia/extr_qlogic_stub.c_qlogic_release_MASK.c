#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  AssignedIRQ; } ;
struct pcmcia_device {TYPE_1__ irq; TYPE_2__* priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  host; } ;
typedef  TYPE_2__ scsi_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct pcmcia_device *link)
{
	scsi_info_t *info = link->priv;

	FUNC0(0, "qlogic_release(0x%p)\n", link);

	FUNC4(info->host);

	FUNC1(link->irq.AssignedIRQ, info->host);
	FUNC2(link);

	FUNC3(info->host);
}