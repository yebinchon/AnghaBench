
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rio_dev {int * riores; } ;
struct resource {int dummy; } ;


 int GFP_KERNEL ;
 size_t RIO_DOORBELL_RESOURCE ;
 int kfree (struct resource*) ;
 struct resource* kmalloc (int,int ) ;
 scalar_t__ request_resource (int *,struct resource*) ;
 int rio_init_dbell_res (struct resource*,int ,int ) ;

struct resource *rio_request_outb_dbell(struct rio_dev *rdev, u16 start,
     u16 end)
{
 struct resource *res = kmalloc(sizeof(struct resource), GFP_KERNEL);

 if (res) {
  rio_init_dbell_res(res, start, end);


  if (request_resource(&rdev->riores[RIO_DOORBELL_RESOURCE], res)
      < 0) {
   kfree(res);
   res = ((void*)0);
  }
 }

 return res;
}
