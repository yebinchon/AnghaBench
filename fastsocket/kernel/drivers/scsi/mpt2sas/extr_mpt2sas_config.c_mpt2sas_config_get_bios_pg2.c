
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct MPT2SAS_ADAPTER {int dummy; } ;
struct TYPE_5__ {int PageNumber; int PageVersion; int PageType; } ;
struct TYPE_6__ {int Action; int PageBufferSGE; TYPE_1__ Header; int Function; } ;
typedef TYPE_2__ Mpi2ConfigRequest_t ;
typedef int Mpi2ConfigReply_t ;
typedef int Mpi2BiosPage2_t ;


 int MPI2_BIOSPAGE2_PAGEVERSION ;
 int MPI2_CONFIG_ACTION_PAGE_HEADER ;
 int MPI2_CONFIG_ACTION_PAGE_READ_CURRENT ;
 int MPI2_CONFIG_PAGETYPE_BIOS ;
 int MPI2_FUNCTION_CONFIG ;
 int MPT2_CONFIG_PAGE_DEFAULT_TIMEOUT ;
 int _config_request (struct MPT2SAS_ADAPTER*,TYPE_2__*,int *,int ,int *,int) ;
 int memset (TYPE_2__*,int ,int) ;
 int mpt2sas_base_build_zero_len_sge (struct MPT2SAS_ADAPTER*,int *) ;

int
mpt2sas_config_get_bios_pg2(struct MPT2SAS_ADAPTER *ioc,
    Mpi2ConfigReply_t *mpi_reply, Mpi2BiosPage2_t *config_page)
{
 Mpi2ConfigRequest_t mpi_request;
 int r;

 memset(&mpi_request, 0, sizeof(Mpi2ConfigRequest_t));
 mpi_request.Function = MPI2_FUNCTION_CONFIG;
 mpi_request.Action = MPI2_CONFIG_ACTION_PAGE_HEADER;
 mpi_request.Header.PageType = MPI2_CONFIG_PAGETYPE_BIOS;
 mpi_request.Header.PageNumber = 2;
 mpi_request.Header.PageVersion = MPI2_BIOSPAGE2_PAGEVERSION;
 mpt2sas_base_build_zero_len_sge(ioc, &mpi_request.PageBufferSGE);
 r = _config_request(ioc, &mpi_request, mpi_reply,
     MPT2_CONFIG_PAGE_DEFAULT_TIMEOUT, ((void*)0), 0);
 if (r)
  goto out;

 mpi_request.Action = MPI2_CONFIG_ACTION_PAGE_READ_CURRENT;
 r = _config_request(ioc, &mpi_request, mpi_reply,
     MPT2_CONFIG_PAGE_DEFAULT_TIMEOUT, config_page,
     sizeof(*config_page));
 out:
 return r;
}
