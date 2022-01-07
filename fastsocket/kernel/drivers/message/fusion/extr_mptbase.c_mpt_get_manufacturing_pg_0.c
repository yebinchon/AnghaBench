
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int dma_addr_t ;
struct TYPE_12__ {TYPE_4__* hdr; } ;
struct TYPE_15__ {int physAddr; int timeout; int PageLength; int action; TYPE_1__ cfghdr; int PageType; } ;
struct TYPE_14__ {int pcidev; int board_tracer; int board_assembly; int board_name; } ;
struct TYPE_13__ {int BoardTracerNumber; int BoardAssembly; int BoardName; } ;
typedef TYPE_2__ ManufacturingPage0_t ;
typedef TYPE_3__ MPT_ADAPTER ;
typedef TYPE_4__ ConfigPageHeader_t ;
typedef TYPE_4__ CONFIGPARMS ;


 int MPI_CONFIG_ACTION_PAGE_HEADER ;
 int MPI_CONFIG_ACTION_PAGE_READ_CURRENT ;
 int MPI_CONFIG_PAGETYPE_MANUFACTURING ;
 int memcpy (int ,int ,int) ;
 int memset (TYPE_4__*,int ,int) ;
 scalar_t__ mpt_config (TYPE_3__*,TYPE_4__*) ;
 TYPE_2__* pci_alloc_consistent (int ,int,int*) ;
 int pci_free_consistent (int ,int,TYPE_2__*,int) ;

__attribute__((used)) static void
mpt_get_manufacturing_pg_0(MPT_ADAPTER *ioc)
{
 CONFIGPARMS cfg;
 ConfigPageHeader_t hdr;
 dma_addr_t buf_dma;
 ManufacturingPage0_t *pbuf = ((void*)0);

 memset(&cfg, 0 , sizeof(CONFIGPARMS));
 memset(&hdr, 0 , sizeof(ConfigPageHeader_t));

 hdr.PageType = MPI_CONFIG_PAGETYPE_MANUFACTURING;
 cfg.cfghdr.hdr = &hdr;
 cfg.physAddr = -1;
 cfg.action = MPI_CONFIG_ACTION_PAGE_HEADER;
 cfg.timeout = 10;

 if (mpt_config(ioc, &cfg) != 0)
  goto out;

 if (!cfg.cfghdr.hdr->PageLength)
  goto out;

 cfg.action = MPI_CONFIG_ACTION_PAGE_READ_CURRENT;
 pbuf = pci_alloc_consistent(ioc->pcidev, hdr.PageLength * 4, &buf_dma);
 if (!pbuf)
  goto out;

 cfg.physAddr = buf_dma;

 if (mpt_config(ioc, &cfg) != 0)
  goto out;

 memcpy(ioc->board_name, pbuf->BoardName, sizeof(ioc->board_name));
 memcpy(ioc->board_assembly, pbuf->BoardAssembly, sizeof(ioc->board_assembly));
 memcpy(ioc->board_tracer, pbuf->BoardTracerNumber, sizeof(ioc->board_tracer));

 out:

 if (pbuf)
  pci_free_consistent(ioc->pcidev, hdr.PageLength * 4, pbuf, buf_dma);
}
