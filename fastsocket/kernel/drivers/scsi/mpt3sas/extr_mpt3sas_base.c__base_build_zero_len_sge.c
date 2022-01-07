
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct MPT3SAS_ADAPTER {int (* base_add_sg_single ) (void*,int ,int) ;} ;


 int MPI2_SGE_FLAGS_END_OF_BUFFER ;
 int MPI2_SGE_FLAGS_END_OF_LIST ;
 int MPI2_SGE_FLAGS_LAST_ELEMENT ;
 int MPI2_SGE_FLAGS_SHIFT ;
 int MPI2_SGE_FLAGS_SIMPLE_ELEMENT ;
 int stub1 (void*,int ,int) ;

__attribute__((used)) static void
_base_build_zero_len_sge(struct MPT3SAS_ADAPTER *ioc, void *paddr)
{
 u32 flags_length = (u32)((MPI2_SGE_FLAGS_LAST_ELEMENT |
     MPI2_SGE_FLAGS_END_OF_BUFFER | MPI2_SGE_FLAGS_END_OF_LIST |
     MPI2_SGE_FLAGS_SIMPLE_ELEMENT) <<
     MPI2_SGE_FLAGS_SHIFT);
 ioc->base_add_sg_single(paddr, flags_length, -1);
}
