
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mem_array {int size; } ;
struct iscsi_sge {int dummy; } ;
struct TYPE_4__ {int iscsi_icd_start; } ;
struct TYPE_3__ {int num_sge_per_io; } ;
struct beiscsi_hba {int ctrl; TYPE_2__ fw_config; TYPE_1__ params; struct be_mem_descriptor* init_mem; } ;
struct be_mem_descriptor {unsigned int num_elements; struct mem_array* mem_array; } ;
struct be_dma_mem {int dummy; } ;


 int BEISCSI_LOG_INIT ;
 int HWI_MEM_SGE ;
 int KERN_ERR ;
 int KERN_INFO ;
 int PAGE_SIZE ;
 int be_cmd_iscsi_post_sgl_pages (int *,struct be_dma_mem*,unsigned int,int) ;
 int beiscsi_log (struct beiscsi_hba*,int ,int ,char*) ;
 int hwi_build_be_sgl_arr (struct beiscsi_hba*,struct mem_array*,struct be_dma_mem*) ;

__attribute__((used)) static int
beiscsi_post_pages(struct beiscsi_hba *phba)
{
 struct be_mem_descriptor *mem_descr;
 struct mem_array *pm_arr;
 unsigned int page_offset, i;
 struct be_dma_mem sgl;
 int status;

 mem_descr = phba->init_mem;
 mem_descr += HWI_MEM_SGE;
 pm_arr = mem_descr->mem_array;

 page_offset = (sizeof(struct iscsi_sge) * phba->params.num_sge_per_io *
   phba->fw_config.iscsi_icd_start) / PAGE_SIZE;
 for (i = 0; i < mem_descr->num_elements; i++) {
  hwi_build_be_sgl_arr(phba, pm_arr, &sgl);
  status = be_cmd_iscsi_post_sgl_pages(&phba->ctrl, &sgl,
      page_offset,
      (pm_arr->size / PAGE_SIZE));
  page_offset += pm_arr->size / PAGE_SIZE;
  if (status != 0) {
   beiscsi_log(phba, KERN_ERR, BEISCSI_LOG_INIT,
        "BM_%d : post sgl failed.\n");
   return status;
  }
  pm_arr++;
 }
 beiscsi_log(phba, KERN_INFO, BEISCSI_LOG_INIT,
      "BM_%d : POSTED PAGES\n");
 return 0;
}
