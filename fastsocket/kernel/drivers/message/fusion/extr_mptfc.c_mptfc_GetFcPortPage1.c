
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u8 ;
typedef void* dma_addr_t ;
struct TYPE_10__ {TYPE_5__* hdr; } ;
struct TYPE_15__ {int physAddr; int pageAddr; int action; scalar_t__ timeout; scalar_t__ dir; TYPE_1__ cfghdr; } ;
struct TYPE_14__ {int PageLength; int PageNumber; int PageType; scalar_t__ PageVersion; } ;
struct TYPE_12__ {TYPE_2__* fc_port_page1; } ;
struct TYPE_13__ {int pcidev; TYPE_3__ fc_data; } ;
struct TYPE_11__ {int pg_sz; int * data; void* dma; } ;
typedef TYPE_4__ MPT_ADAPTER ;
typedef int FCPortPage1_t ;
typedef TYPE_5__ ConfigPageHeader_t ;
typedef TYPE_6__ CONFIGPARMS ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int MPI_CONFIG_ACTION_PAGE_HEADER ;
 int MPI_CONFIG_ACTION_PAGE_READ_CURRENT ;
 int MPI_CONFIG_PAGETYPE_FC_PORT ;
 int memset (int *,int ,int) ;
 int mpt_config (TYPE_4__*,TYPE_6__*) ;
 scalar_t__ pci_alloc_consistent (int ,int,void**) ;
 int pci_free_consistent (int ,int,int *,void*) ;

__attribute__((used)) static int
mptfc_GetFcPortPage1(MPT_ADAPTER *ioc, int portnum)
{
 ConfigPageHeader_t hdr;
 CONFIGPARMS cfg;
 FCPortPage1_t *page1_alloc;
 dma_addr_t page1_dma;
 int data_sz;
 int rc;

 if (portnum > 1)
  return -EINVAL;


 hdr.PageVersion = 0;
 hdr.PageLength = 0;
 hdr.PageNumber = 1;
 hdr.PageType = MPI_CONFIG_PAGETYPE_FC_PORT;
 cfg.cfghdr.hdr = &hdr;
 cfg.physAddr = -1;
 cfg.action = MPI_CONFIG_ACTION_PAGE_HEADER;
 cfg.dir = 0;
 cfg.pageAddr = portnum;
 cfg.timeout = 0;

 if ((rc = mpt_config(ioc, &cfg)) != 0)
  return rc;

 if (hdr.PageLength == 0)
  return -ENODEV;

start_over:

 if (ioc->fc_data.fc_port_page1[portnum].data == ((void*)0)) {
  data_sz = hdr.PageLength * 4;
  if (data_sz < sizeof(FCPortPage1_t))
   data_sz = sizeof(FCPortPage1_t);

  page1_alloc = (FCPortPage1_t *) pci_alloc_consistent(ioc->pcidev,
      data_sz,
      &page1_dma);
  if (!page1_alloc)
   return -ENOMEM;
 }
 else {
  page1_alloc = ioc->fc_data.fc_port_page1[portnum].data;
  page1_dma = ioc->fc_data.fc_port_page1[portnum].dma;
  data_sz = ioc->fc_data.fc_port_page1[portnum].pg_sz;
  if (hdr.PageLength * 4 > data_sz) {
   ioc->fc_data.fc_port_page1[portnum].data = ((void*)0);
   pci_free_consistent(ioc->pcidev, data_sz, (u8 *)
    page1_alloc, page1_dma);
   goto start_over;
  }
 }

 memset(page1_alloc,0,data_sz);

 cfg.physAddr = page1_dma;
 cfg.action = MPI_CONFIG_ACTION_PAGE_READ_CURRENT;

 if ((rc = mpt_config(ioc, &cfg)) == 0) {
  ioc->fc_data.fc_port_page1[portnum].data = page1_alloc;
  ioc->fc_data.fc_port_page1[portnum].pg_sz = data_sz;
  ioc->fc_data.fc_port_page1[portnum].dma = page1_dma;
 }
 else {
  ioc->fc_data.fc_port_page1[portnum].data = ((void*)0);
  pci_free_consistent(ioc->pcidev, data_sz, (u8 *)
   page1_alloc, page1_dma);
 }

 return rc;
}
