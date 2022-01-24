#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct pcmcia_device {TYPE_3__* priv; } ;
struct TYPE_8__ {TYPE_1__* host; } ;
typedef  TYPE_3__ ide_info_t ;
struct TYPE_7__ {unsigned long data_addr; unsigned long ctl_addr; } ;
struct TYPE_9__ {TYPE_2__ io_ports; } ;
typedef  TYPE_4__ ide_hwif_t ;
struct TYPE_6__ {TYPE_4__** ports; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int) ; 

__attribute__((used)) static void FUNC4(struct pcmcia_device *link)
{
    ide_info_t *info = link->priv;
    ide_hwif_t *hwif = info->host->ports[0];
    unsigned long data_addr, ctl_addr;

    FUNC0(0, "ide_detach(0x%p)\n", link);

    data_addr = hwif->io_ports.data_addr;
    ctl_addr  = hwif->io_ports.ctl_addr;

    FUNC1(link);

    FUNC3(ctl_addr, 1);
    FUNC3(data_addr, 8);

    FUNC2(info);
}