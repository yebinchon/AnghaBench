#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_7__ ;
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int dma_addr_t ;
struct TYPE_17__ {TYPE_6__* hdr; } ;
struct TYPE_23__ {int physAddr; int /*<<< orphan*/  action; scalar_t__ timeout; scalar_t__ dir; scalar_t__ pageAddr; TYPE_1__ cfghdr; } ;
struct TYPE_22__ {int PageLength; int PageNumber; int /*<<< orphan*/  PageType; scalar_t__ PageVersion; } ;
struct TYPE_21__ {int NumActiveVolumes; TYPE_3__* RaidVolume; } ;
struct TYPE_18__ {TYPE_5__* pIocPg2; } ;
struct TYPE_20__ {int /*<<< orphan*/  pcidev; TYPE_2__ raid_data; int /*<<< orphan*/  ir_firmware; } ;
struct TYPE_19__ {int /*<<< orphan*/  VolumeID; int /*<<< orphan*/  VolumeBus; } ;
typedef  TYPE_4__ MPT_ADAPTER ;
typedef  TYPE_5__ IOCPage2_t ;
typedef  TYPE_6__ ConfigPageHeader_t ;
typedef  TYPE_7__ CONFIGPARMS ;

/* Variables and functions */
 int EFAULT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MPI_CONFIG_ACTION_PAGE_HEADER ; 
 int /*<<< orphan*/  MPI_CONFIG_ACTION_PAGE_READ_CURRENT ; 
 int /*<<< orphan*/  MPI_CONFIG_PAGETYPE_IOC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (TYPE_4__*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 TYPE_5__* FUNC7 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,TYPE_5__*,int) ; 

int
FUNC9(MPT_ADAPTER *ioc)
{
	IOCPage2_t		*pIoc2;
	u8			*mem;
	dma_addr_t		 ioc2_dma;
	CONFIGPARMS		 cfg;
	ConfigPageHeader_t	 header;
	int			 rc = 0;
	int			 iocpage2sz;
	int			 i;

	if (!ioc->ir_firmware)
		return 0;

	/* Free the old page
	 */
	FUNC0(ioc->raid_data.pIocPg2);
	ioc->raid_data.pIocPg2 = NULL;
	FUNC4(ioc);

	/* Read IOCP2 header then the page.
	 */
	header.PageVersion = 0;
	header.PageLength = 0;
	header.PageNumber = 2;
	header.PageType = MPI_CONFIG_PAGETYPE_IOC;
	cfg.cfghdr.hdr = &header;
	cfg.physAddr = -1;
	cfg.pageAddr = 0;
	cfg.action = MPI_CONFIG_ACTION_PAGE_HEADER;
	cfg.dir = 0;
	cfg.timeout = 0;
	if (FUNC3(ioc, &cfg) != 0)
		 return -EFAULT;

	if (header.PageLength == 0)
		return -EFAULT;

	iocpage2sz = header.PageLength * 4;
	pIoc2 = FUNC7(ioc->pcidev, iocpage2sz, &ioc2_dma);
	if (!pIoc2)
		return -ENOMEM;

	cfg.action = MPI_CONFIG_ACTION_PAGE_READ_CURRENT;
	cfg.physAddr = ioc2_dma;
	if (FUNC3(ioc, &cfg) != 0)
		goto out;

	mem = FUNC1(iocpage2sz, GFP_KERNEL);
	if (!mem)
		goto out;

	FUNC2(mem, (u8 *)pIoc2, iocpage2sz);
	ioc->raid_data.pIocPg2 = (IOCPage2_t *) mem;

	FUNC6(ioc);

	for (i = 0; i < pIoc2->NumActiveVolumes ; i++)
		FUNC5(ioc,
		    pIoc2->RaidVolume[i].VolumeBus,
		    pIoc2->RaidVolume[i].VolumeID);

 out:
	FUNC8(ioc->pcidev, iocpage2sz, pIoc2, ioc2_dma);

	return rc;
}