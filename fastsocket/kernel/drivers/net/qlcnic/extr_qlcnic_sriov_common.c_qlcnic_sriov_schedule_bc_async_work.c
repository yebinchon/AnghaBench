
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int work_func_t ;
struct qlcnic_back_channel {int bc_async_wq; } ;
struct qlcnic_async_work_list {int work; void* ptr; } ;


 int INIT_WORK (int *,int ) ;
 struct qlcnic_async_work_list* qlcnic_sriov_get_free_node_async_work (struct qlcnic_back_channel*) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void qlcnic_sriov_schedule_bc_async_work(struct qlcnic_back_channel *bc,
      work_func_t func, void *data)
{
 struct qlcnic_async_work_list *entry = ((void*)0);

 entry = qlcnic_sriov_get_free_node_async_work(bc);
 if (!entry)
  return;

 entry->ptr = data;
 INIT_WORK(&entry->work, func);
 queue_work(bc->bc_async_wq, &entry->work);
}
