
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtio_scsi {TYPE_1__* event_list; } ;
struct TYPE_2__ {int work; } ;


 int VIRTIO_SCSI_EVENT_LEN ;
 int cancel_work_sync (int *) ;

__attribute__((used)) static void virtscsi_cancel_event_work(struct virtio_scsi *vscsi)
{
 int i;

 for (i = 0; i < VIRTIO_SCSI_EVENT_LEN; i++)
  cancel_work_sync(&vscsi->event_list[i].work);
}
