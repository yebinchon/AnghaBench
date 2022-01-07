
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct legacy_probe {int private; } ;
struct legacy_data {int timing; } ;


 int EBUSY ;
 int * devm_request_region (int *,int ,int,char*) ;

__attribute__((used)) static int winbond_port(struct platform_device *dev,
   struct legacy_probe *lp, struct legacy_data *ld)
{
 if (devm_request_region(&dev->dev, lp->private, 4, "winbond") == ((void*)0))
  return -EBUSY;
 ld->timing = lp->private;
 return 0;
}
