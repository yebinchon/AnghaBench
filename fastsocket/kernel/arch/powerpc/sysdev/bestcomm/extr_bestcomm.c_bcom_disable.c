
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcom_task {int tasknum; } ;


 int bcom_disable_task (int ) ;

void
bcom_disable(struct bcom_task *tsk)
{
 bcom_disable_task(tsk->tasknum);
}
