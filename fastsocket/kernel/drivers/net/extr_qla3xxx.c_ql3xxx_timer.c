
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql3_adapter {int link_state_work; int workqueue; } ;


 int queue_delayed_work (int ,int *,int ) ;

__attribute__((used)) static void ql3xxx_timer(unsigned long ptr)
{
 struct ql3_adapter *qdev = (struct ql3_adapter *)ptr;
 queue_delayed_work(qdev->workqueue, &qdev->link_state_work, 0);
}
