
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_target {int dummy; } ;
struct device {struct device* parent; } ;


 int kfree (struct scsi_target*) ;
 int put_device (struct device*) ;
 struct scsi_target* to_scsi_target (struct device*) ;

__attribute__((used)) static void scsi_target_dev_release(struct device *dev)
{
 struct device *parent = dev->parent;
 struct scsi_target *starget = to_scsi_target(dev);

 kfree(starget);
 put_device(parent);
}
