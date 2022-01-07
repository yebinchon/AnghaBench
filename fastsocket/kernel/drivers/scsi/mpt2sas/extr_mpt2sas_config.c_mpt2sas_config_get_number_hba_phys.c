
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct MPT2SAS_ADAPTER {int dummy; } ;
struct TYPE_12__ {int IOCStatus; } ;
struct TYPE_9__ {int PageVersion; scalar_t__ PageNumber; int PageType; } ;
struct TYPE_11__ {int Action; int PageBufferSGE; TYPE_1__ Header; int ExtPageType; int Function; } ;
struct TYPE_10__ {int NumPhys; } ;
typedef TYPE_2__ Mpi2SasIOUnitPage0_t ;
typedef TYPE_3__ Mpi2ConfigRequest_t ;
typedef TYPE_4__ Mpi2ConfigReply_t ;


 int MPI2_CONFIG_ACTION_PAGE_HEADER ;
 int MPI2_CONFIG_ACTION_PAGE_READ_CURRENT ;
 int MPI2_CONFIG_EXTPAGETYPE_SAS_IO_UNIT ;
 int MPI2_CONFIG_PAGETYPE_EXTENDED ;
 int MPI2_FUNCTION_CONFIG ;
 int MPI2_IOCSTATUS_MASK ;
 int MPI2_IOCSTATUS_SUCCESS ;
 int MPI2_SASIOUNITPAGE0_PAGEVERSION ;
 int MPT2_CONFIG_PAGE_DEFAULT_TIMEOUT ;
 int _config_request (struct MPT2SAS_ADAPTER*,TYPE_3__*,TYPE_4__*,int ,TYPE_2__*,int) ;
 int le16_to_cpu (int ) ;
 int memset (TYPE_3__*,int ,int) ;
 int mpt2sas_base_build_zero_len_sge (struct MPT2SAS_ADAPTER*,int *) ;

int
mpt2sas_config_get_number_hba_phys(struct MPT2SAS_ADAPTER *ioc, u8 *num_phys)
{
 Mpi2ConfigRequest_t mpi_request;
 int r;
 u16 ioc_status;
 Mpi2ConfigReply_t mpi_reply;
 Mpi2SasIOUnitPage0_t config_page;

 *num_phys = 0;
 memset(&mpi_request, 0, sizeof(Mpi2ConfigRequest_t));
 mpi_request.Function = MPI2_FUNCTION_CONFIG;
 mpi_request.Action = MPI2_CONFIG_ACTION_PAGE_HEADER;
 mpi_request.Header.PageType = MPI2_CONFIG_PAGETYPE_EXTENDED;
 mpi_request.ExtPageType = MPI2_CONFIG_EXTPAGETYPE_SAS_IO_UNIT;
 mpi_request.Header.PageNumber = 0;
 mpi_request.Header.PageVersion = MPI2_SASIOUNITPAGE0_PAGEVERSION;
 mpt2sas_base_build_zero_len_sge(ioc, &mpi_request.PageBufferSGE);
 r = _config_request(ioc, &mpi_request, &mpi_reply,
     MPT2_CONFIG_PAGE_DEFAULT_TIMEOUT, ((void*)0), 0);
 if (r)
  goto out;

 mpi_request.Action = MPI2_CONFIG_ACTION_PAGE_READ_CURRENT;
 r = _config_request(ioc, &mpi_request, &mpi_reply,
     MPT2_CONFIG_PAGE_DEFAULT_TIMEOUT, &config_page,
     sizeof(Mpi2SasIOUnitPage0_t));
 if (!r) {
  ioc_status = le16_to_cpu(mpi_reply.IOCStatus) &
      MPI2_IOCSTATUS_MASK;
  if (ioc_status == MPI2_IOCSTATUS_SUCCESS)
   *num_phys = config_page.NumPhys;
 }
 out:
 return r;
}
