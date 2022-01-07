
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {int tagged_supported; TYPE_1__* host; } ;
struct TYPE_2__ {int can_queue; } ;


 int scsi_activate_tcq (struct scsi_device*,int ) ;

__attribute__((used)) static int
stex_slave_alloc(struct scsi_device *sdev)
{

 sdev->tagged_supported = 1;

 scsi_activate_tcq(sdev, sdev->host->can_queue);

 return 0;
}
