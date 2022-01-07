
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_task {int hdr_itt; } ;
struct cxgbi_task_data {scalar_t__ skb; } ;


 int CXGBI_DBG_ISCSI ;
 int __kfree_skb (scalar_t__) ;
 struct cxgbi_task_data* iscsi_task_cxgbi_data (struct iscsi_task*) ;
 int iscsi_tcp_cleanup_task (struct iscsi_task*) ;
 int log_debug (int,char*,struct iscsi_task*,scalar_t__,int ) ;
 int memset (struct cxgbi_task_data*,int ,int) ;
 int task_release_itt (struct iscsi_task*,int ) ;

void cxgbi_cleanup_task(struct iscsi_task *task)
{
 struct cxgbi_task_data *tdata = iscsi_task_cxgbi_data(task);

 log_debug(1 << CXGBI_DBG_ISCSI,
  "task 0x%p, skb 0x%p, itt 0x%x.\n",
  task, tdata->skb, task->hdr_itt);


 if (tdata->skb)
  __kfree_skb(tdata->skb);
 memset(tdata, 0, sizeof(*tdata));

 task_release_itt(task, task->hdr_itt);
 iscsi_tcp_cleanup_task(task);
}
