
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parisc_device {scalar_t__ driver; } ;



int register_parisc_device(struct parisc_device *dev)
{
 if (!dev)
  return 0;

 if (dev->driver)
  return 1;

 return 0;
}
