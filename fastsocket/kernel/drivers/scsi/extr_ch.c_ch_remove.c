
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_4__ {struct TYPE_4__* dt; int minor; } ;
typedef TYPE_1__ scsi_changer ;


 int MKDEV (int ,int ) ;
 int SCSI_CHANGER_MAJOR ;
 int ch_index_idr ;
 int ch_index_lock ;
 int ch_sysfs_class ;
 TYPE_1__* dev_get_drvdata (struct device*) ;
 int device_destroy (int ,int ) ;
 int idr_remove (int *,int ) ;
 int kfree (TYPE_1__*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int ch_remove(struct device *dev)
{
 scsi_changer *ch = dev_get_drvdata(dev);

 spin_lock(&ch_index_lock);
 idr_remove(&ch_index_idr, ch->minor);
 spin_unlock(&ch_index_lock);

 device_destroy(ch_sysfs_class, MKDEV(SCSI_CHANGER_MAJOR,ch->minor));
 kfree(ch->dt);
 kfree(ch);
 return 0;
}
