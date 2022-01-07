
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int was_reset; int expecting_cc_ua; } ;



__attribute__((used)) static void __scsi_report_device_reset(struct scsi_device *sdev, void *data)
{
 sdev->was_reset = 1;
 sdev->expecting_cc_ua = 1;
}
