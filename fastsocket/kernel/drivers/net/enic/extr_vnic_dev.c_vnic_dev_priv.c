
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnic_dev {void* priv; } ;



void *vnic_dev_priv(struct vnic_dev *vdev)
{
 return vdev->priv;
}
