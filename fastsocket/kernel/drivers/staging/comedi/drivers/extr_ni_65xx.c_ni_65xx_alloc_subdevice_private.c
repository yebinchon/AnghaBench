
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_65xx_subdevice_private {int dummy; } ;


 int GFP_KERNEL ;
 struct ni_65xx_subdevice_private* kzalloc (int,int ) ;

__attribute__((used)) static struct ni_65xx_subdevice_private *ni_65xx_alloc_subdevice_private(void)
{
 struct ni_65xx_subdevice_private *subdev_private =
     kzalloc(sizeof(struct ni_65xx_subdevice_private), GFP_KERNEL);
 if (subdev_private == ((void*)0))
  return ((void*)0);
 return subdev_private;
}
