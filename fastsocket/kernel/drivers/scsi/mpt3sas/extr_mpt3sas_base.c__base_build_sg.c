
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct MPT3SAS_ADAPTER {int (* base_add_sg_single ) (void*,size_t,int ) ;int sge_size; } ;
typedef int dma_addr_t ;


 size_t MPI2_SGE_FLAGS_END_OF_BUFFER ;
 size_t MPI2_SGE_FLAGS_END_OF_LIST ;
 size_t MPI2_SGE_FLAGS_HOST_TO_IOC ;
 size_t MPI2_SGE_FLAGS_LAST_ELEMENT ;
 size_t MPI2_SGE_FLAGS_SHIFT ;
 size_t MPI2_SGE_FLAGS_SIMPLE_ELEMENT ;
 int _base_build_zero_len_sge (struct MPT3SAS_ADAPTER*,void*) ;
 int stub1 (void*,size_t,int ) ;
 int stub2 (void*,size_t,int ) ;
 int stub3 (void*,size_t,int ) ;
 int stub4 (void*,size_t,int ) ;

__attribute__((used)) static void
_base_build_sg(struct MPT3SAS_ADAPTER *ioc, void *psge,
 dma_addr_t data_out_dma, size_t data_out_sz, dma_addr_t data_in_dma,
 size_t data_in_sz)
{
 u32 sgl_flags;

 if (!data_out_sz && !data_in_sz) {
  _base_build_zero_len_sge(ioc, psge);
  return;
 }

 if (data_out_sz && data_in_sz) {

  sgl_flags = (MPI2_SGE_FLAGS_SIMPLE_ELEMENT |
      MPI2_SGE_FLAGS_END_OF_BUFFER | MPI2_SGE_FLAGS_HOST_TO_IOC);
  sgl_flags = sgl_flags << MPI2_SGE_FLAGS_SHIFT;
  ioc->base_add_sg_single(psge, sgl_flags |
      data_out_sz, data_out_dma);


  psge += ioc->sge_size;


  sgl_flags = (MPI2_SGE_FLAGS_SIMPLE_ELEMENT |
      MPI2_SGE_FLAGS_LAST_ELEMENT | MPI2_SGE_FLAGS_END_OF_BUFFER |
      MPI2_SGE_FLAGS_END_OF_LIST);
  sgl_flags = sgl_flags << MPI2_SGE_FLAGS_SHIFT;
  ioc->base_add_sg_single(psge, sgl_flags |
      data_in_sz, data_in_dma);
 } else if (data_out_sz) {
  sgl_flags = (MPI2_SGE_FLAGS_SIMPLE_ELEMENT |
      MPI2_SGE_FLAGS_LAST_ELEMENT | MPI2_SGE_FLAGS_END_OF_BUFFER |
      MPI2_SGE_FLAGS_END_OF_LIST | MPI2_SGE_FLAGS_HOST_TO_IOC);
  sgl_flags = sgl_flags << MPI2_SGE_FLAGS_SHIFT;
  ioc->base_add_sg_single(psge, sgl_flags |
      data_out_sz, data_out_dma);
 } else if (data_in_sz) {
  sgl_flags = (MPI2_SGE_FLAGS_SIMPLE_ELEMENT |
      MPI2_SGE_FLAGS_LAST_ELEMENT | MPI2_SGE_FLAGS_END_OF_BUFFER |
      MPI2_SGE_FLAGS_END_OF_LIST);
  sgl_flags = sgl_flags << MPI2_SGE_FLAGS_SHIFT;
  ioc->base_add_sg_single(psge, sgl_flags |
      data_in_sz, data_in_dma);
 }
}
