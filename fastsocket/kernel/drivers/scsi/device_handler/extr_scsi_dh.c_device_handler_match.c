
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device_handler {int dummy; } ;
struct scsi_device {int dummy; } ;


 struct scsi_device_handler* device_handler_match_function (struct scsi_device*) ;

__attribute__((used)) static struct scsi_device_handler *
device_handler_match(struct scsi_device_handler *scsi_dh,
       struct scsi_device *sdev)
{
 struct scsi_device_handler *found_dh;

 found_dh = device_handler_match_function(sdev);

 if (scsi_dh && found_dh != scsi_dh)
  found_dh = ((void*)0);

 return found_dh;
}
