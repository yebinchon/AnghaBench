
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nes_vnic {scalar_t__ of_device_registered; } ;
struct TYPE_2__ {int dev; } ;
struct nes_ib_device {TYPE_1__ ibdev; struct nes_vnic* nesvnic; } ;


 int ARRAY_SIZE (int *) ;
 int device_remove_file (int *,int ) ;
 int ib_unregister_device (TYPE_1__*) ;
 int * nes_dev_attributes ;

__attribute__((used)) static void nes_unregister_ofa_device(struct nes_ib_device *nesibdev)
{
 struct nes_vnic *nesvnic = nesibdev->nesvnic;
 int i;

 for (i = 0; i < ARRAY_SIZE(nes_dev_attributes); ++i) {
  device_remove_file(&nesibdev->ibdev.dev, nes_dev_attributes[i]);
 }

 if (nesvnic->of_device_registered) {
  ib_unregister_device(&nesibdev->ibdev);
 }

 nesvnic->of_device_registered = 0;
}
