#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_8__ ;
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  off_t ;
struct TYPE_14__ {int /*<<< orphan*/  count; } ;
struct TYPE_13__ {scalar_t__ count; } ;
struct TYPE_12__ {int /*<<< orphan*/  count; } ;
struct TYPE_17__ {int ad_type; scalar_t__ num_ioctl; TYPE_4__ copp_waitlist; TYPE_3__ scb_activelist; TYPE_2__ scb_waitlist; int /*<<< orphan*/  max_cmds; TYPE_1__* enq; TYPE_6__* nvram; TYPE_5__* pcidev; int /*<<< orphan*/  mem_ptr; int /*<<< orphan*/  mem_len; int /*<<< orphan*/  mem_addr; int /*<<< orphan*/  io_len; int /*<<< orphan*/  io_addr; } ;
typedef  TYPE_7__ ips_ha_t ;
struct TYPE_18__ {char* buffer; int length; int localpos; scalar_t__ pos; int /*<<< orphan*/  offset; } ;
struct TYPE_16__ {int /*<<< orphan*/ * bios_low; int /*<<< orphan*/ * bios_high; int /*<<< orphan*/  signature; int /*<<< orphan*/  adapter_type; } ;
struct TYPE_15__ {int /*<<< orphan*/  irq; } ;
struct TYPE_11__ {int /*<<< orphan*/  ucMaxPhysicalDevices; int /*<<< orphan*/ * BootBlkVersion; int /*<<< orphan*/ * CodeBlkVersion; } ;
typedef  TYPE_8__ IPS_INFOSTR ;

/* Variables and functions */
 int /*<<< orphan*/  IPS_BUILD_IDENT ; 
 scalar_t__ IPS_NVRAM_P5_SIG ; 
 int /*<<< orphan*/  IPS_VERSION_HIGH ; 
 int /*<<< orphan*/  IPS_VERSION_LOW ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_8__*,char*,...) ; 
 int /*<<< orphan*/ * ips_adapter_name ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(ips_ha_t * ha, char *ptr, off_t offset, int len)
{
	IPS_INFOSTR info;

	FUNC0("ips_host_info", 1);

	info.buffer = ptr;
	info.length = len;
	info.offset = offset;
	info.pos = 0;
	info.localpos = 0;

	FUNC1(&info, "\nIBM ServeRAID General Information:\n\n");

	if ((FUNC3(ha->nvram->signature) == IPS_NVRAM_P5_SIG) &&
	    (FUNC2(ha->nvram->adapter_type) != 0))
		FUNC1(&info, "\tController Type                   : %s\n",
			  ips_adapter_name[ha->ad_type - 1]);
	else
		FUNC1(&info,
			  "\tController Type                   : Unknown\n");

	if (ha->io_addr)
		FUNC1(&info,
			  "\tIO region                         : 0x%lx (%d bytes)\n",
			  ha->io_addr, ha->io_len);

	if (ha->mem_addr) {
		FUNC1(&info,
			  "\tMemory region                     : 0x%lx (%d bytes)\n",
			  ha->mem_addr, ha->mem_len);
		FUNC1(&info,
			  "\tShared memory address             : 0x%lx\n",
			  ha->mem_ptr);
	}

	FUNC1(&info, "\tIRQ number                        : %d\n", ha->pcidev->irq);

    /* For the Next 3 lines Check for Binary 0 at the end and don't include it if it's there. */
    /* That keeps everything happy for "text" operations on the proc file.                    */

	if (FUNC3(ha->nvram->signature) == IPS_NVRAM_P5_SIG) {
	if (ha->nvram->bios_low[3] == 0) {
            FUNC1(&info,
			          "\tBIOS Version                      : %c%c%c%c%c%c%c\n",
			          ha->nvram->bios_high[0], ha->nvram->bios_high[1],
			          ha->nvram->bios_high[2], ha->nvram->bios_high[3],
			          ha->nvram->bios_low[0], ha->nvram->bios_low[1],
			          ha->nvram->bios_low[2]);

        } else {
		    FUNC1(&info,
			          "\tBIOS Version                      : %c%c%c%c%c%c%c%c\n",
			          ha->nvram->bios_high[0], ha->nvram->bios_high[1],
			          ha->nvram->bios_high[2], ha->nvram->bios_high[3],
			          ha->nvram->bios_low[0], ha->nvram->bios_low[1],
			          ha->nvram->bios_low[2], ha->nvram->bios_low[3]);
        }

    }

    if (ha->enq->CodeBlkVersion[7] == 0) {
        FUNC1(&info,
		          "\tFirmware Version                  : %c%c%c%c%c%c%c\n",
		          ha->enq->CodeBlkVersion[0], ha->enq->CodeBlkVersion[1],
		          ha->enq->CodeBlkVersion[2], ha->enq->CodeBlkVersion[3],
		          ha->enq->CodeBlkVersion[4], ha->enq->CodeBlkVersion[5],
		          ha->enq->CodeBlkVersion[6]);
    } else {
        FUNC1(&info,
		          "\tFirmware Version                  : %c%c%c%c%c%c%c%c\n",
		          ha->enq->CodeBlkVersion[0], ha->enq->CodeBlkVersion[1],
		          ha->enq->CodeBlkVersion[2], ha->enq->CodeBlkVersion[3],
		          ha->enq->CodeBlkVersion[4], ha->enq->CodeBlkVersion[5],
		          ha->enq->CodeBlkVersion[6], ha->enq->CodeBlkVersion[7]);
    }

    if (ha->enq->BootBlkVersion[7] == 0) {
        FUNC1(&info,
		          "\tBoot Block Version                : %c%c%c%c%c%c%c\n",
		          ha->enq->BootBlkVersion[0], ha->enq->BootBlkVersion[1],
		          ha->enq->BootBlkVersion[2], ha->enq->BootBlkVersion[3],
		          ha->enq->BootBlkVersion[4], ha->enq->BootBlkVersion[5],
		          ha->enq->BootBlkVersion[6]);
    } else {
        FUNC1(&info,
		          "\tBoot Block Version                : %c%c%c%c%c%c%c%c\n",
		          ha->enq->BootBlkVersion[0], ha->enq->BootBlkVersion[1],
		          ha->enq->BootBlkVersion[2], ha->enq->BootBlkVersion[3],
		          ha->enq->BootBlkVersion[4], ha->enq->BootBlkVersion[5],
		          ha->enq->BootBlkVersion[6], ha->enq->BootBlkVersion[7]);
    }

	FUNC1(&info, "\tDriver Version                    : %s%s\n",
		  IPS_VERSION_HIGH, IPS_VERSION_LOW);

	FUNC1(&info, "\tDriver Build                      : %d\n",
		  IPS_BUILD_IDENT);

	FUNC1(&info, "\tMax Physical Devices              : %d\n",
		  ha->enq->ucMaxPhysicalDevices);
	FUNC1(&info, "\tMax Active Commands               : %d\n",
		  ha->max_cmds);
	FUNC1(&info, "\tCurrent Queued Commands           : %d\n",
		  ha->scb_waitlist.count);
	FUNC1(&info, "\tCurrent Active Commands           : %d\n",
		  ha->scb_activelist.count - ha->num_ioctl);
	FUNC1(&info, "\tCurrent Queued PT Commands        : %d\n",
		  ha->copp_waitlist.count);
	FUNC1(&info, "\tCurrent Active PT Commands        : %d\n",
		  ha->num_ioctl);

	FUNC1(&info, "\n");

	return (info.localpos);
}