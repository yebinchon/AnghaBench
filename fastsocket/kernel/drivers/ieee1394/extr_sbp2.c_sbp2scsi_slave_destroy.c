
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {TYPE_1__* host; } ;
struct sbp2_lu {int * sdev; } ;
struct TYPE_2__ {scalar_t__* hostdata; } ;



__attribute__((used)) static void sbp2scsi_slave_destroy(struct scsi_device *sdev)
{
 ((struct sbp2_lu *)sdev->host->hostdata[0])->sdev = ((void*)0);
 return;
}
