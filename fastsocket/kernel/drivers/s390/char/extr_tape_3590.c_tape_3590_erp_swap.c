
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tape_request {int dummy; } ;
struct tape_device {TYPE_1__* cdev; } ;
struct irb {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int dev_warn (int *,char*) ;
 int tape_3590_erp_basic (struct tape_device*,struct tape_request*,struct irb*,int ) ;

__attribute__((used)) static int
tape_3590_erp_swap(struct tape_device *device, struct tape_request *request,
     struct irb *irb)
{






 dev_warn (&device->cdev->dev, "The tape medium must be loaded into a "
  "different tape unit\n");
 return tape_3590_erp_basic(device, request, irb, -EIO);
}
