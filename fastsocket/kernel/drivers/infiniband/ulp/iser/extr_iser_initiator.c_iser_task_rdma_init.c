
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iser_regd_buf {int dummy; } ;
struct iscsi_iser_task {int * rdma_regd; TYPE_1__* data; scalar_t__* dir; int status; } ;
struct TYPE_2__ {scalar_t__ data_len; } ;


 size_t ISER_DIR_IN ;
 size_t ISER_DIR_OUT ;
 int ISER_TASK_STATUS_INIT ;
 int memset (int *,int ,int) ;

void iser_task_rdma_init(struct iscsi_iser_task *iser_task)

{
 iser_task->status = ISER_TASK_STATUS_INIT;

 iser_task->dir[ISER_DIR_IN] = 0;
 iser_task->dir[ISER_DIR_OUT] = 0;

 iser_task->data[ISER_DIR_IN].data_len = 0;
 iser_task->data[ISER_DIR_OUT].data_len = 0;

 memset(&iser_task->rdma_regd[ISER_DIR_IN], 0,
        sizeof(struct iser_regd_buf));
 memset(&iser_task->rdma_regd[ISER_DIR_OUT], 0,
        sizeof(struct iser_regd_buf));
}
