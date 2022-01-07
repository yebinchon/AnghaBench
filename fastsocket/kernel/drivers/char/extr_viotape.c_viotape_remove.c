
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vio_dev {int unit_address; } ;


 int MKDEV (int ,int) ;
 int VIOTAPE_MAJOR ;
 int device_destroy (int ,int ) ;
 int tape_class ;

__attribute__((used)) static int viotape_remove(struct vio_dev *vdev)
{
 int i = vdev->unit_address;

 device_destroy(tape_class, MKDEV(VIOTAPE_MAJOR, i | 0x80));
 device_destroy(tape_class, MKDEV(VIOTAPE_MAJOR, i));
 return 0;
}
