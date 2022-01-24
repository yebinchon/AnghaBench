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
struct sym53c500_data {scalar_t__ fast_pio; } ;
struct Scsi_Host {int /*<<< orphan*/  irq; int /*<<< orphan*/  io_port; scalar_t__ hostdata; } ;
typedef  int /*<<< orphan*/  info_msg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static const char*
FUNC3(struct Scsi_Host *SChost)
{
	static char info_msg[256];
	struct sym53c500_data *data =
	    (struct sym53c500_data *)SChost->hostdata;

	FUNC0(FUNC1("SYM53C500_info called\n"));
	(void)FUNC2(info_msg, sizeof(info_msg),
	    "SYM53C500 at 0x%lx, IRQ %d, %s PIO mode.", 
	    SChost->io_port, SChost->irq, data->fast_pio ? "fast" : "slow");
	return (info_msg);
}