
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sgl_handle {int dummy; } ;
struct TYPE_2__ {int ios_per_ctrl; } ;
struct beiscsi_hba {size_t io_sgl_free_index; TYPE_1__ params; int io_sgl_hndl_avbl; struct sgl_handle** io_sgl_hndl_base; } ;


 int BEISCSI_LOG_IO ;
 int KERN_INFO ;
 int beiscsi_log (struct beiscsi_hba*,int ,int ,char*,size_t,...) ;

__attribute__((used)) static void
free_io_sgl_handle(struct beiscsi_hba *phba, struct sgl_handle *psgl_handle)
{
 beiscsi_log(phba, KERN_INFO, BEISCSI_LOG_IO,
      "BM_%d : In free_,io_sgl_free_index=%d\n",
      phba->io_sgl_free_index);

 if (phba->io_sgl_hndl_base[phba->io_sgl_free_index]) {




   beiscsi_log(phba, KERN_INFO, BEISCSI_LOG_IO,
        "BM_%d : Double Free in IO SGL io_sgl_free_index=%d,"
        "value there=%p\n", phba->io_sgl_free_index,
        phba->io_sgl_hndl_base
        [phba->io_sgl_free_index]);
  return;
 }
 phba->io_sgl_hndl_base[phba->io_sgl_free_index] = psgl_handle;
 phba->io_sgl_hndl_avbl++;
 if (phba->io_sgl_free_index == (phba->params.ios_per_ctrl - 1))
  phba->io_sgl_free_index = 0;
 else
  phba->io_sgl_free_index++;
}
