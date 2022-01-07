
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hwi_controller {struct hwi_context_memory* phwi_ctxt; } ;
struct hwi_context_memory {int dummy; } ;
struct beiscsi_hba {TYPE_2__* init_mem; struct hwi_controller* phwi_ctrlr; } ;
struct TYPE_4__ {int num_elements; TYPE_1__* mem_array; } ;
struct TYPE_3__ {scalar_t__ virtual_address; } ;


 int BEISCSI_LOG_INIT ;
 int ENOMEM ;
 size_t HWI_MEM_ADDN_CONTEXT ;
 int KERN_ERR ;
 int KERN_INFO ;
 scalar_t__ beiscsi_init_wrb_handle (struct beiscsi_hba*) ;
 int beiscsi_log (struct beiscsi_hba*,int ,int ,char*,...) ;
 scalar_t__ hwi_init_async_pdu_ctx (struct beiscsi_hba*) ;
 scalar_t__ hwi_init_port (struct beiscsi_hba*) ;
 int iscsi_init_global_templates (struct beiscsi_hba*) ;

__attribute__((used)) static int hwi_init_controller(struct beiscsi_hba *phba)
{
 struct hwi_controller *phwi_ctrlr;

 phwi_ctrlr = phba->phwi_ctrlr;
 if (1 == phba->init_mem[HWI_MEM_ADDN_CONTEXT].num_elements) {
  phwi_ctrlr->phwi_ctxt = (struct hwi_context_memory *)phba->
      init_mem[HWI_MEM_ADDN_CONTEXT].mem_array[0].virtual_address;
  beiscsi_log(phba, KERN_INFO, BEISCSI_LOG_INIT,
       "BM_%d :  phwi_ctrlr->phwi_ctxt=%p\n",
       phwi_ctrlr->phwi_ctxt);
 } else {
  beiscsi_log(phba, KERN_ERR, BEISCSI_LOG_INIT,
       "BM_%d : HWI_MEM_ADDN_CONTEXT is more "
       "than one element.Failing to load\n");
  return -ENOMEM;
 }

 iscsi_init_global_templates(phba);
 if (beiscsi_init_wrb_handle(phba))
  return -ENOMEM;

 if (hwi_init_async_pdu_ctx(phba)) {
  beiscsi_log(phba, KERN_ERR, BEISCSI_LOG_INIT,
       "BM_%d : hwi_init_async_pdu_ctx failed\n");
  return -ENOMEM;
 }

 if (hwi_init_port(phba) != 0) {
  beiscsi_log(phba, KERN_ERR, BEISCSI_LOG_INIT,
       "BM_%d : hwi_init_controller failed\n");

  return -ENOMEM;
 }
 return 0;
}
