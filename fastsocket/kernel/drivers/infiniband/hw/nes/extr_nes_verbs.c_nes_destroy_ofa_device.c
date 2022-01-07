
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int iwcm; } ;
struct nes_ib_device {TYPE_1__ ibdev; } ;


 int ib_dealloc_device (TYPE_1__*) ;
 int kfree (int ) ;
 int nes_unregister_ofa_device (struct nes_ib_device*) ;

void nes_destroy_ofa_device(struct nes_ib_device *nesibdev)
{
 if (nesibdev == ((void*)0))
  return;

 nes_unregister_ofa_device(nesibdev);

 kfree(nesibdev->ibdev.iwcm);
 ib_dealloc_device(&nesibdev->ibdev);
}
