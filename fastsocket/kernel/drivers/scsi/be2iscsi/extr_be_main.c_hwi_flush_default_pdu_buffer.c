
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i_t_dpdu_cqe {int dummy; } ;
struct hwi_controller {int dummy; } ;
struct hwi_async_pdu_context {int dummy; } ;
struct beiscsi_hba {struct hwi_controller* phwi_ctrlr; } ;
struct beiscsi_conn {int dummy; } ;
struct async_pdu_handle {scalar_t__ is_header; scalar_t__ consumed; int cri; } ;


 int BUG_ON (int) ;
 struct hwi_async_pdu_context* HWI_GET_ASYNC_PDU_CTX (struct hwi_controller*) ;
 int hwi_free_async_msg (struct beiscsi_hba*,int ) ;
 struct async_pdu_handle* hwi_get_async_handle (struct beiscsi_hba*,struct beiscsi_conn*,struct hwi_async_pdu_context*,struct i_t_dpdu_cqe*,unsigned int*) ;
 int hwi_post_async_buffers (struct beiscsi_hba*,scalar_t__) ;
 int hwi_update_async_writables (struct beiscsi_hba*,struct hwi_async_pdu_context*,scalar_t__,unsigned int) ;

__attribute__((used)) static void hwi_flush_default_pdu_buffer(struct beiscsi_hba *phba,
      struct beiscsi_conn *beiscsi_conn,
      struct i_t_dpdu_cqe *pdpdu_cqe)
{
 struct hwi_controller *phwi_ctrlr;
 struct hwi_async_pdu_context *pasync_ctx;
 struct async_pdu_handle *pasync_handle = ((void*)0);
 unsigned int cq_index = -1;

 phwi_ctrlr = phba->phwi_ctrlr;
 pasync_ctx = HWI_GET_ASYNC_PDU_CTX(phwi_ctrlr);

 pasync_handle = hwi_get_async_handle(phba, beiscsi_conn, pasync_ctx,
          pdpdu_cqe, &cq_index);
 BUG_ON(pasync_handle->is_header != 0);
 if (pasync_handle->consumed == 0)
  hwi_update_async_writables(phba, pasync_ctx,
        pasync_handle->is_header, cq_index);

 hwi_free_async_msg(phba, pasync_handle->cri);
 hwi_post_async_buffers(phba, pasync_handle->is_header);
}
