
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fd; } ;
struct fast_task_info {TYPE_1__ event; scalar_t__ offset; } ;


 int IOEVENT_WRITE ;
 int client_sock_write (int ,int ,struct fast_task_info*) ;

int storage_send_add_event(struct fast_task_info *pTask)
{
 pTask->offset = 0;


 client_sock_write(pTask->event.fd, IOEVENT_WRITE, pTask);

 return 0;
}
