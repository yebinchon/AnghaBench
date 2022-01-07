
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_scsi_event_node {int work; } ;


 int INIT_WORK (int *,int ) ;
 int schedule_work (int *) ;
 int virtscsi_handle_event ;

__attribute__((used)) static void virtscsi_complete_event(void *buf)
{
 struct virtio_scsi_event_node *event_node = buf;

 INIT_WORK(&event_node->work, virtscsi_handle_event);
 schedule_work(&event_node->work);
}
