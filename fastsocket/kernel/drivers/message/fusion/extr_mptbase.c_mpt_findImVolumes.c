
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int u8 ;
typedef int dma_addr_t ;
struct TYPE_17__ {TYPE_6__* hdr; } ;
struct TYPE_23__ {int physAddr; int action; scalar_t__ timeout; scalar_t__ dir; scalar_t__ pageAddr; TYPE_1__ cfghdr; } ;
struct TYPE_22__ {int PageLength; int PageNumber; int PageType; scalar_t__ PageVersion; } ;
struct TYPE_21__ {int NumActiveVolumes; TYPE_3__* RaidVolume; } ;
struct TYPE_18__ {TYPE_5__* pIocPg2; } ;
struct TYPE_20__ {int pcidev; TYPE_2__ raid_data; int ir_firmware; } ;
struct TYPE_19__ {int VolumeID; int VolumeBus; } ;
typedef TYPE_4__ MPT_ADAPTER ;
typedef TYPE_5__ IOCPage2_t ;
typedef TYPE_6__ ConfigPageHeader_t ;
typedef TYPE_7__ CONFIGPARMS ;


 int EFAULT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MPI_CONFIG_ACTION_PAGE_HEADER ;
 int MPI_CONFIG_ACTION_PAGE_READ_CURRENT ;
 int MPI_CONFIG_PAGETYPE_IOC ;
 int kfree (TYPE_5__*) ;
 int * kmalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 scalar_t__ mpt_config (TYPE_4__*,TYPE_7__*) ;
 int mpt_inactive_raid_list_free (TYPE_4__*) ;
 int mpt_inactive_raid_volumes (TYPE_4__*,int ,int ) ;
 int mpt_read_ioc_pg_3 (TYPE_4__*) ;
 TYPE_5__* pci_alloc_consistent (int ,int,int*) ;
 int pci_free_consistent (int ,int,TYPE_5__*,int) ;

int
mpt_findImVolumes(MPT_ADAPTER *ioc)
{
 IOCPage2_t *pIoc2;
 u8 *mem;
 dma_addr_t ioc2_dma;
 CONFIGPARMS cfg;
 ConfigPageHeader_t header;
 int rc = 0;
 int iocpage2sz;
 int i;

 if (!ioc->ir_firmware)
  return 0;



 kfree(ioc->raid_data.pIocPg2);
 ioc->raid_data.pIocPg2 = ((void*)0);
 mpt_inactive_raid_list_free(ioc);



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
 if (mpt_config(ioc, &cfg) != 0)
   return -EFAULT;

 if (header.PageLength == 0)
  return -EFAULT;

 iocpage2sz = header.PageLength * 4;
 pIoc2 = pci_alloc_consistent(ioc->pcidev, iocpage2sz, &ioc2_dma);
 if (!pIoc2)
  return -ENOMEM;

 cfg.action = MPI_CONFIG_ACTION_PAGE_READ_CURRENT;
 cfg.physAddr = ioc2_dma;
 if (mpt_config(ioc, &cfg) != 0)
  goto out;

 mem = kmalloc(iocpage2sz, GFP_KERNEL);
 if (!mem)
  goto out;

 memcpy(mem, (u8 *)pIoc2, iocpage2sz);
 ioc->raid_data.pIocPg2 = (IOCPage2_t *) mem;

 mpt_read_ioc_pg_3(ioc);

 for (i = 0; i < pIoc2->NumActiveVolumes ; i++)
  mpt_inactive_raid_volumes(ioc,
      pIoc2->RaidVolume[i].VolumeBus,
      pIoc2->RaidVolume[i].VolumeID);

 out:
 pci_free_consistent(ioc->pcidev, iocpage2sz, pIoc2, ioc2_dma);

 return rc;
}
