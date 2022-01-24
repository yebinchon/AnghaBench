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
struct scsi_info_t {struct Scsi_Host* host; } ;
struct pcmcia_device {struct scsi_info_t* priv; } ;
struct Scsi_Host {scalar_t__ n_io_port; scalar_t__ io_port; scalar_t__ irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC2 (struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC5 (struct Scsi_Host*) ; 

__attribute__((used)) static void
FUNC6(struct pcmcia_device *link)
{
	struct scsi_info_t *info = link->priv;
	struct Scsi_Host *shost = info->host;

	FUNC0(0, "SYM53C500_release(0x%p)\n", link);

	/*
	*  Do this before releasing/freeing resources.
	*/
	FUNC5(shost);

	/*
	*  Interrupts getting hosed on card removal.  Try
	*  the following code, mostly from qlogicfas.c.
	*/
	if (shost->irq)
		FUNC1(shost->irq, shost);
	if (shost->io_port && shost->n_io_port)
		FUNC3(shost->io_port, shost->n_io_port);

	FUNC2(link);

	FUNC4(shost);
}