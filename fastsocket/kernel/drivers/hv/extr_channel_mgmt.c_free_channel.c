
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmbus_channel {int work; } ;
struct TYPE_2__ {int work_queue; } ;


 int INIT_WORK (int *,int ) ;
 int queue_work (int ,int *) ;
 int release_channel ;
 TYPE_1__ vmbus_connection ;

__attribute__((used)) static void free_channel(struct vmbus_channel *channel)
{






 INIT_WORK(&channel->work, release_channel);
 queue_work(vmbus_connection.work_queue, &channel->work);
}
