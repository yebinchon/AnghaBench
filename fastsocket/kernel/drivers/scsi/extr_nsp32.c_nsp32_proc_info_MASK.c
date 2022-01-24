#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct Scsi_Host {int host_no; unsigned int io_port; int this_id; int /*<<< orphan*/  sg_tablesize; int /*<<< orphan*/  base; scalar_t__ n_io_port; int /*<<< orphan*/  irq; scalar_t__ hostdata; } ;
typedef  int off_t ;
struct TYPE_5__ {TYPE_3__* target; int /*<<< orphan*/  Lock; int /*<<< orphan*/  CurrentSC; TYPE_1__* pci_devid; scalar_t__ MmioLength; } ;
typedef  TYPE_2__ nsp32_hw_data ;
struct TYPE_6__ {scalar_t__ sync_flag; int period; scalar_t__ offset; } ;
struct TYPE_4__ {long driver_data; } ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*) ; 
 scalar_t__ ASYNC_OFFSET ; 
 int /*<<< orphan*/  CHIP_MODE ; 
 int EINVAL ; 
 int /*<<< orphan*/  INDEX_REG ; 
 unsigned char OEM0 ; 
 unsigned char OEM1 ; 
 unsigned char OPTF ; 
 scalar_t__ SDTR_DONE ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int TRUE ; 
 int FUNC2 (int,int) ; 
 unsigned char FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * nsp32_model ; 
 int FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nsp32_release_version ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct Scsi_Host *host, char *buffer, char **start,
			   off_t offset, int length, int inout)
{
	char             *pos = buffer;
	int               thislength;
	unsigned long     flags;
	nsp32_hw_data    *data;
	int               hostno;
	unsigned int      base;
	unsigned char     mode_reg;
	int               id, speed;
	long              model;

	/* Write is not supported, just return. */
	if (inout == TRUE) {
		return -EINVAL;
	}

	hostno = host->host_no;
	data = (nsp32_hw_data *)host->hostdata;
	base = host->io_port;

	FUNC1("NinjaSCSI-32 status\n\n");
	FUNC1("Driver version:        %s, $Revision: 1.33 $\n", nsp32_release_version);
	FUNC1("SCSI host No.:         %d\n",		hostno);
	FUNC1("IRQ:                   %d\n",		host->irq);
	FUNC1("IO:                    0x%lx-0x%lx\n", host->io_port, host->io_port + host->n_io_port - 1);
	FUNC1("MMIO(virtual address): 0x%lx-0x%lx\n",	host->base, host->base + data->MmioLength - 1);
	FUNC1("sg_tablesize:          %d\n",		host->sg_tablesize);
	FUNC1("Chip revision:         0x%x\n",       	(FUNC4(base, INDEX_REG) >> 8) & 0xff);

	mode_reg = FUNC3(base, CHIP_MODE);
	model    = data->pci_devid->driver_data;

#ifdef CONFIG_PM
	SPRINTF("Power Management:      %s\n",          (mode_reg & OPTF) ? "yes" : "no");
#endif
	FUNC1("OEM:                   %ld, %s\n",     (mode_reg & (OEM0|OEM1)), nsp32_model[model]);

	FUNC5(&(data->Lock), flags);
	FUNC1("CurrentSC:             0x%p\n\n",      data->CurrentSC);
	FUNC6(&(data->Lock), flags);


	FUNC1("SDTR status\n");
	for (id = 0; id < FUNC0(data->target); id++) {

                FUNC1("id %d: ", id);

		if (id == host->this_id) {
			FUNC1("----- NinjaSCSI-32 host adapter\n");
			continue;
		}

		if (data->target[id].sync_flag == SDTR_DONE) {
			if (data->target[id].period == 0            &&
			    data->target[id].offset == ASYNC_OFFSET ) {
				FUNC1("async");
			} else {
				FUNC1(" sync");
			}
		} else {
			FUNC1(" none");
		}

		if (data->target[id].period != 0) {

			speed = 1000000 / (data->target[id].period * 4);

			FUNC1(" transfer %d.%dMB/s, offset %d",
				speed / 1000,
				speed % 1000,
				data->target[id].offset
				);
		}
		FUNC1("\n");
	}


	thislength = pos - (buffer + offset);

	if(thislength < 0) {
		*start = NULL;
                return 0;
        }


	thislength = FUNC2(thislength, length);
	*start = buffer + offset;

	return thislength;
}