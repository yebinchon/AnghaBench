
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_17__ {void* handle; } ;
struct TYPE_16__ {void* handle; } ;
struct mptsas_phyinfo {TYPE_3__ attached; TYPE_2__ identify; int hw_link_rate; int programmed_link_rate; int negotiated_link_rate; int port_id; int phy_id; } ;
typedef int dma_addr_t ;
struct TYPE_15__ {TYPE_6__* ehdr; } ;
struct TYPE_21__ {int physAddr; int action; int timeout; scalar_t__ dir; scalar_t__ pageAddr; TYPE_1__ cfghdr; } ;
struct TYPE_20__ {int ExtPageLength; int PageNumber; int ExtPageType; int PageType; scalar_t__ Reserved2; scalar_t__ Reserved1; int PageVersion; } ;
struct TYPE_19__ {int pcidev; } ;
struct TYPE_18__ {int AttachedDevHandle; int OwnerDevHandle; int HwLinkRate; int ProgrammedLinkRate; int NegotiatedLinkRate; int PhysicalPort; int PhyIdentifier; } ;
typedef TYPE_4__ SasExpanderPage1_t ;
typedef TYPE_5__ MPT_ADAPTER ;
typedef TYPE_6__ ConfigExtendedPageHeader_t ;
typedef TYPE_7__ CONFIGPARMS ;


 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int MPI_CONFIG_ACTION_PAGE_HEADER ;
 int MPI_CONFIG_ACTION_PAGE_READ_CURRENT ;
 int MPI_CONFIG_EXTPAGETYPE_SAS_EXPANDER ;
 int MPI_CONFIG_PAGETYPE_EXTENDED ;
 int MPI_IOCSTATUS_CONFIG_INVALID_PAGE ;
 int MPI_SASEXPANDER1_PAGEVERSION ;
 int SAS_CONFIG_PAGE_TIMEOUT ;
 void* le16_to_cpu (int ) ;
 int mpt_config (TYPE_5__*,TYPE_7__*) ;
 int mptsas_print_expander_pg1 (TYPE_5__*,TYPE_4__*) ;
 TYPE_4__* pci_alloc_consistent (int ,int,int*) ;
 int pci_free_consistent (int ,int,TYPE_4__*,int) ;

__attribute__((used)) static int
mptsas_sas_expander_pg1(MPT_ADAPTER *ioc, struct mptsas_phyinfo *phy_info,
  u32 form, u32 form_specific)
{
 ConfigExtendedPageHeader_t hdr;
 CONFIGPARMS cfg;
 SasExpanderPage1_t *buffer;
 dma_addr_t dma_handle;
 int error=0;

 hdr.PageVersion = MPI_SASEXPANDER1_PAGEVERSION;
 hdr.ExtPageLength = 0;
 hdr.PageNumber = 1;
 hdr.Reserved1 = 0;
 hdr.Reserved2 = 0;
 hdr.PageType = MPI_CONFIG_PAGETYPE_EXTENDED;
 hdr.ExtPageType = MPI_CONFIG_EXTPAGETYPE_SAS_EXPANDER;

 cfg.cfghdr.ehdr = &hdr;
 cfg.physAddr = -1;
 cfg.pageAddr = form + form_specific;
 cfg.action = MPI_CONFIG_ACTION_PAGE_HEADER;
 cfg.dir = 0;
 cfg.timeout = SAS_CONFIG_PAGE_TIMEOUT;

 error = mpt_config(ioc, &cfg);
 if (error)
  goto out;

 if (!hdr.ExtPageLength) {
  error = -ENXIO;
  goto out;
 }

 buffer = pci_alloc_consistent(ioc->pcidev, hdr.ExtPageLength * 4,
          &dma_handle);
 if (!buffer) {
  error = -ENOMEM;
  goto out;
 }

 cfg.physAddr = dma_handle;
 cfg.action = MPI_CONFIG_ACTION_PAGE_READ_CURRENT;

 error = mpt_config(ioc, &cfg);

 if (error == MPI_IOCSTATUS_CONFIG_INVALID_PAGE) {
  error = -ENODEV;
  goto out_free_consistent;
 }

 if (error)
  goto out_free_consistent;


 mptsas_print_expander_pg1(ioc, buffer);


 phy_info->phy_id = buffer->PhyIdentifier;
 phy_info->port_id = buffer->PhysicalPort;
 phy_info->negotiated_link_rate = buffer->NegotiatedLinkRate;
 phy_info->programmed_link_rate = buffer->ProgrammedLinkRate;
 phy_info->hw_link_rate = buffer->HwLinkRate;
 phy_info->identify.handle = le16_to_cpu(buffer->OwnerDevHandle);
 phy_info->attached.handle = le16_to_cpu(buffer->AttachedDevHandle);

 out_free_consistent:
 pci_free_consistent(ioc->pcidev, hdr.ExtPageLength * 4,
       buffer, dma_handle);
 out:
 return error;
}
