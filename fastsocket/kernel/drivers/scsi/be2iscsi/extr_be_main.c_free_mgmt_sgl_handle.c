
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sgl_handle {int dummy; } ;
struct TYPE_2__ {int icds_per_ctrl; int ios_per_ctrl; } ;
struct beiscsi_hba {size_t eh_sgl_free_index; TYPE_1__ params; int eh_sgl_hndl_avbl; struct sgl_handle** eh_sgl_hndl_base; } ;


 int BEISCSI_LOG_CONFIG ;
 int KERN_INFO ;
 int KERN_WARNING ;
 int beiscsi_log (struct beiscsi_hba*,int ,int ,char*,size_t) ;

void
free_mgmt_sgl_handle(struct beiscsi_hba *phba, struct sgl_handle *psgl_handle)
{

 beiscsi_log(phba, KERN_INFO, BEISCSI_LOG_CONFIG,
      "BM_%d : In  free_mgmt_sgl_handle,"
      "eh_sgl_free_index=%d\n",
      phba->eh_sgl_free_index);

 if (phba->eh_sgl_hndl_base[phba->eh_sgl_free_index]) {




  beiscsi_log(phba, KERN_WARNING, BEISCSI_LOG_CONFIG,
       "BM_%d : Double Free in eh SGL ,"
       "eh_sgl_free_index=%d\n",
       phba->eh_sgl_free_index);
  return;
 }
 phba->eh_sgl_hndl_base[phba->eh_sgl_free_index] = psgl_handle;
 phba->eh_sgl_hndl_avbl++;
 if (phba->eh_sgl_free_index ==
     (phba->params.icds_per_ctrl - phba->params.ios_per_ctrl - 1))
  phba->eh_sgl_free_index = 0;
 else
  phba->eh_sgl_free_index++;
}
