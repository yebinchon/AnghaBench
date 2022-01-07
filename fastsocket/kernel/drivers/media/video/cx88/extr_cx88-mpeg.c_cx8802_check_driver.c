
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx8802_driver {scalar_t__ type_id; scalar_t__ hw_access; int * advise_release; int * advise_acquire; int * remove; int * probe; } ;


 scalar_t__ CX8802_DRVCTL_EXCLUSIVE ;
 scalar_t__ CX8802_DRVCTL_SHARED ;
 scalar_t__ CX88_MPEG_BLACKBIRD ;
 scalar_t__ CX88_MPEG_DVB ;
 int EINVAL ;
 int ENODEV ;

__attribute__((used)) static int cx8802_check_driver(struct cx8802_driver *drv)
{
 if (drv == ((void*)0))
  return -ENODEV;

 if ((drv->type_id != CX88_MPEG_DVB) &&
  (drv->type_id != CX88_MPEG_BLACKBIRD))
  return -EINVAL;

 if ((drv->hw_access != CX8802_DRVCTL_SHARED) &&
  (drv->hw_access != CX8802_DRVCTL_EXCLUSIVE))
  return -EINVAL;

 if ((drv->probe == ((void*)0)) ||
  (drv->remove == ((void*)0)) ||
  (drv->advise_acquire == ((void*)0)) ||
  (drv->advise_release == ((void*)0)))
  return -EINVAL;

 return 0;
}
