
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int address; } ;
struct TYPE_5__ {TYPE_1__ a64; } ;
struct TYPE_6__ {TYPE_2__ u; } ;
struct mem_array {int size; TYPE_3__ bus_address; int virtual_address; } ;
struct beiscsi_hba {int dummy; } ;
struct be_dma_mem {scalar_t__ va; } ;


 int be_sgl_create_contiguous (int ,int ,int ,struct be_dma_mem*) ;
 int be_sgl_destroy_contiguous (struct be_dma_mem*) ;

__attribute__((used)) static void
hwi_build_be_sgl_arr(struct beiscsi_hba *phba,
       struct mem_array *pmem, struct be_dma_mem *sgl)
{
 if (sgl->va)
  be_sgl_destroy_contiguous(sgl);

 be_sgl_create_contiguous(pmem->virtual_address,
     pmem->bus_address.u.a64.address,
     pmem->size, sgl);
}
