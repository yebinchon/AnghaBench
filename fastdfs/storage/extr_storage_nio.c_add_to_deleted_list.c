
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fast_task_info {TYPE_1__* thread_data; struct fast_task_info* next; scalar_t__ arg; } ;
struct TYPE_4__ {int canceled; } ;
struct TYPE_3__ {struct fast_task_info* deleted_list; } ;
typedef TYPE_2__ StorageClientInfo ;



void add_to_deleted_list(struct fast_task_info *pTask)
{
 ((StorageClientInfo *)pTask->arg)->canceled = 1;
 pTask->next = pTask->thread_data->deleted_list;
 pTask->thread_data->deleted_list = pTask;
}
