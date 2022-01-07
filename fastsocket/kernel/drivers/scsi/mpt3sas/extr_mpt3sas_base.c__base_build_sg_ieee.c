
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct MPT3SAS_ADAPTER {int sge_size_ieee; } ;
typedef int dma_addr_t ;


 int MPI25_IEEE_SGE_FLAGS_END_OF_LIST ;
 int MPI2_IEEE_SGE_FLAGS_SIMPLE_ELEMENT ;
 int MPI2_IEEE_SGE_FLAGS_SYSTEM_ADDR ;
 int _base_add_sg_single_ieee (void*,int,int ,size_t,int ) ;
 int _base_build_zero_len_sge_ieee (struct MPT3SAS_ADAPTER*,void*) ;

__attribute__((used)) static void
_base_build_sg_ieee(struct MPT3SAS_ADAPTER *ioc, void *psge,
 dma_addr_t data_out_dma, size_t data_out_sz, dma_addr_t data_in_dma,
 size_t data_in_sz)
{
 u8 sgl_flags;

 if (!data_out_sz && !data_in_sz) {
  _base_build_zero_len_sge_ieee(ioc, psge);
  return;
 }

 if (data_out_sz && data_in_sz) {

  sgl_flags = MPI2_IEEE_SGE_FLAGS_SIMPLE_ELEMENT |
      MPI2_IEEE_SGE_FLAGS_SYSTEM_ADDR;
  _base_add_sg_single_ieee(psge, sgl_flags, 0, data_out_sz,
      data_out_dma);


  psge += ioc->sge_size_ieee;


  sgl_flags |= MPI25_IEEE_SGE_FLAGS_END_OF_LIST;
  _base_add_sg_single_ieee(psge, sgl_flags, 0, data_in_sz,
      data_in_dma);
 } else if (data_out_sz) {
  sgl_flags = MPI2_IEEE_SGE_FLAGS_SIMPLE_ELEMENT |
      MPI25_IEEE_SGE_FLAGS_END_OF_LIST |
      MPI2_IEEE_SGE_FLAGS_SYSTEM_ADDR;
  _base_add_sg_single_ieee(psge, sgl_flags, 0, data_out_sz,
      data_out_dma);
 } else if (data_in_sz) {
  sgl_flags = MPI2_IEEE_SGE_FLAGS_SIMPLE_ELEMENT |
      MPI25_IEEE_SGE_FLAGS_END_OF_LIST |
      MPI2_IEEE_SGE_FLAGS_SYSTEM_ADDR;
  _base_add_sg_single_ieee(psge, sgl_flags, 0, data_in_sz,
      data_in_dma);
 }
}
