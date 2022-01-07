
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_event {int evt_type; int node; } ;
typedef int gfp_t ;
typedef enum scsi_device_event { ____Placeholder_scsi_device_event } scsi_device_event ;


 int INIT_LIST_HEAD (int *) ;

 struct scsi_event* kzalloc (int,int ) ;

struct scsi_event *sdev_evt_alloc(enum scsi_device_event evt_type,
      gfp_t gfpflags)
{
 struct scsi_event *evt = kzalloc(sizeof(struct scsi_event), gfpflags);
 if (!evt)
  return ((void*)0);

 evt->evt_type = evt_type;
 INIT_LIST_HEAD(&evt->node);


 switch (evt_type) {
 case 128:
 default:

  break;
 }

 return evt;
}
