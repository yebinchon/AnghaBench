
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct mptsas_devinfo {void* flags; int device_info; int sas_address; int channel; int phys_disk_num; int id; int port_id; int phy_id; void* slot; void* handle_enclosure; void* handle_parent; void* handle; } ;
typedef int dma_addr_t ;
typedef int __le64 ;
struct TYPE_13__ {TYPE_4__* ehdr; } ;
struct TYPE_17__ {int physAddr; int action; int timeout; scalar_t__ dir; scalar_t__ pageAddr; TYPE_1__ cfghdr; } ;
struct TYPE_16__ {int ExtPageLength; int ExtPageType; int PageType; scalar_t__ Reserved2; scalar_t__ Reserved1; scalar_t__ PageNumber; int PageVersion; } ;
struct TYPE_15__ {int pcidev; } ;
struct TYPE_14__ {int Flags; int DeviceInfo; int SASAddress; int Bus; int TargetID; int PhysicalPort; int PhyNum; int Slot; int EnclosureHandle; int ParentDevHandle; int DevHandle; } ;
typedef TYPE_2__ SasDevicePage0_t ;
typedef TYPE_3__ MPT_ADAPTER ;
typedef TYPE_4__ ConfigExtendedPageHeader_t ;
typedef TYPE_5__ CONFIGPARMS ;


 int ENOMEM ;
 int ENXIO ;
 int MPI_CONFIG_ACTION_PAGE_HEADER ;
 int MPI_CONFIG_ACTION_PAGE_READ_CURRENT ;
 int MPI_CONFIG_EXTPAGETYPE_SAS_DEVICE ;
 int MPI_CONFIG_PAGETYPE_EXTENDED ;
 int MPI_SASDEVICE0_PAGEVERSION ;
 int SAS_CONFIG_PAGE_TIMEOUT ;
 void* le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int le64_to_cpu (int ) ;
 int memcpy (int *,int *,int) ;
 int memset (struct mptsas_devinfo*,int ,int) ;
 int mpt_config (TYPE_3__*,TYPE_5__*) ;
 int mptsas_print_device_pg0 (TYPE_3__*,TYPE_2__*) ;
 TYPE_2__* pci_alloc_consistent (int ,int,int*) ;
 int pci_free_consistent (int ,int,TYPE_2__*,int) ;

__attribute__((used)) static int
mptsas_sas_device_pg0(MPT_ADAPTER *ioc, struct mptsas_devinfo *device_info,
  u32 form, u32 form_specific)
{
 ConfigExtendedPageHeader_t hdr;
 CONFIGPARMS cfg;
 SasDevicePage0_t *buffer;
 dma_addr_t dma_handle;
 __le64 sas_address;
 int error=0;

 hdr.PageVersion = MPI_SASDEVICE0_PAGEVERSION;
 hdr.ExtPageLength = 0;
 hdr.PageNumber = 0;
 hdr.Reserved1 = 0;
 hdr.Reserved2 = 0;
 hdr.PageType = MPI_CONFIG_PAGETYPE_EXTENDED;
 hdr.ExtPageType = MPI_CONFIG_EXTPAGETYPE_SAS_DEVICE;

 cfg.cfghdr.ehdr = &hdr;
 cfg.pageAddr = form + form_specific;
 cfg.physAddr = -1;
 cfg.action = MPI_CONFIG_ACTION_PAGE_HEADER;
 cfg.dir = 0;
 cfg.timeout = SAS_CONFIG_PAGE_TIMEOUT;

 memset(device_info, 0, sizeof(struct mptsas_devinfo));
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
 if (error)
  goto out_free_consistent;

 mptsas_print_device_pg0(ioc, buffer);

 memset(device_info, 0, sizeof(struct mptsas_devinfo));
 device_info->handle = le16_to_cpu(buffer->DevHandle);
 device_info->handle_parent = le16_to_cpu(buffer->ParentDevHandle);
 device_info->handle_enclosure =
     le16_to_cpu(buffer->EnclosureHandle);
 device_info->slot = le16_to_cpu(buffer->Slot);
 device_info->phy_id = buffer->PhyNum;
 device_info->port_id = buffer->PhysicalPort;
 device_info->id = buffer->TargetID;
 device_info->phys_disk_num = ~0;
 device_info->channel = buffer->Bus;
 memcpy(&sas_address, &buffer->SASAddress, sizeof(__le64));
 device_info->sas_address = le64_to_cpu(sas_address);
 device_info->device_info =
     le32_to_cpu(buffer->DeviceInfo);
 device_info->flags = le16_to_cpu(buffer->Flags);

 out_free_consistent:
 pci_free_consistent(ioc->pcidev, hdr.ExtPageLength * 4,
       buffer, dma_handle);
 out:
 return error;
}
