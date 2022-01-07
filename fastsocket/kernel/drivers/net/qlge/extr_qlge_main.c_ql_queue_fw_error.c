
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql_adapter {int mpi_reset_work; int workqueue; } ;


 int ql_link_off (struct ql_adapter*) ;
 int queue_delayed_work (int ,int *,int ) ;

void ql_queue_fw_error(struct ql_adapter *qdev)
{
 ql_link_off(qdev);
 queue_delayed_work(qdev->workqueue, &qdev->mpi_reset_work, 0);
}
