
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fast_task_info {scalar_t__ length; } ;


 int storage_dio_queue_push (struct fast_task_info*) ;

__attribute__((used)) static int calc_crc32_continue_callback(struct fast_task_info *pTask)
{
    pTask->length = 0;
    return storage_dio_queue_push(pTask);
}
