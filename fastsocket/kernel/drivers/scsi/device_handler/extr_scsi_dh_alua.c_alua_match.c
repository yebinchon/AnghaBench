
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;


 scalar_t__ scsi_device_tpgs (struct scsi_device*) ;

__attribute__((used)) static bool alua_match(struct scsi_device *sdev)
{
 return (scsi_device_tpgs(sdev) != 0);
}
