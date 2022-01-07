
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct MPT2SAS_ADAPTER {int dummy; } ;
struct TYPE_5__ {int PageVersion; scalar_t__ PageNumber; int PageType; } ;
struct TYPE_6__ {int Action; int PageAddress; int PageBufferSGE; TYPE_1__ Header; int ExtPageType; int Function; } ;
typedef int Mpi2SasEnclosurePage0_t ;
typedef TYPE_2__ Mpi2ConfigRequest_t ;
typedef int Mpi2ConfigReply_t ;


 int MPI2_CONFIG_ACTION_PAGE_HEADER ;
 int MPI2_CONFIG_ACTION_PAGE_READ_CURRENT ;
 int MPI2_CONFIG_EXTPAGETYPE_ENCLOSURE ;
 int MPI2_CONFIG_PAGETYPE_EXTENDED ;
 int MPI2_FUNCTION_CONFIG ;
 int MPI2_SASENCLOSURE0_PAGEVERSION ;
 int MPT2_CONFIG_PAGE_DEFAULT_TIMEOUT ;
 int _config_request (struct MPT2SAS_ADAPTER*,TYPE_2__*,int *,int ,int *,int) ;
 int cpu_to_le32 (int) ;
 int memset (TYPE_2__*,int ,int) ;
 int mpt2sas_base_build_zero_len_sge (struct MPT2SAS_ADAPTER*,int *) ;

int
mpt2sas_config_get_enclosure_pg0(struct MPT2SAS_ADAPTER *ioc, Mpi2ConfigReply_t
    *mpi_reply, Mpi2SasEnclosurePage0_t *config_page, u32 form, u32 handle)
{
 Mpi2ConfigRequest_t mpi_request;
 int r;

 memset(&mpi_request, 0, sizeof(Mpi2ConfigRequest_t));
 mpi_request.Function = MPI2_FUNCTION_CONFIG;
 mpi_request.Action = MPI2_CONFIG_ACTION_PAGE_HEADER;
 mpi_request.Header.PageType = MPI2_CONFIG_PAGETYPE_EXTENDED;
 mpi_request.ExtPageType = MPI2_CONFIG_EXTPAGETYPE_ENCLOSURE;
 mpi_request.Header.PageNumber = 0;
 mpi_request.Header.PageVersion = MPI2_SASENCLOSURE0_PAGEVERSION;
 mpt2sas_base_build_zero_len_sge(ioc, &mpi_request.PageBufferSGE);
 r = _config_request(ioc, &mpi_request, mpi_reply,
     MPT2_CONFIG_PAGE_DEFAULT_TIMEOUT, ((void*)0), 0);
 if (r)
  goto out;

 mpi_request.PageAddress = cpu_to_le32(form | handle);
 mpi_request.Action = MPI2_CONFIG_ACTION_PAGE_READ_CURRENT;
 r = _config_request(ioc, &mpi_request, mpi_reply,
     MPT2_CONFIG_PAGE_DEFAULT_TIMEOUT, config_page,
     sizeof(*config_page));
 out:
 return r;
}
