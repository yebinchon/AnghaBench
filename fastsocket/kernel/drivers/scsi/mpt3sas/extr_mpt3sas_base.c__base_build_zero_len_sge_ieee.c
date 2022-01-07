
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct MPT3SAS_ADAPTER {int dummy; } ;


 int MPI25_IEEE_SGE_FLAGS_END_OF_LIST ;
 int MPI2_IEEE_SGE_FLAGS_SIMPLE_ELEMENT ;
 int MPI2_IEEE_SGE_FLAGS_SYSTEM_ADDR ;
 int _base_add_sg_single_ieee (void*,int,int ,int ,int) ;

__attribute__((used)) static void
_base_build_zero_len_sge_ieee(struct MPT3SAS_ADAPTER *ioc, void *paddr)
{
 u8 sgl_flags = (MPI2_IEEE_SGE_FLAGS_SIMPLE_ELEMENT |
  MPI2_IEEE_SGE_FLAGS_SYSTEM_ADDR |
  MPI25_IEEE_SGE_FLAGS_END_OF_LIST);
 _base_add_sg_single_ieee(paddr, sgl_flags, 0, 0, -1);
}
