
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parisc_device {int hw_path; } ;


 int HPHW_IOA ;
 void* ccio_find_ioc (int ) ;
 struct parisc_device* find_pa_parent_type (struct parisc_device const*,int ) ;

void * ccio_get_iommu(const struct parisc_device *dev)
{
 dev = find_pa_parent_type(dev, HPHW_IOA);
 if (!dev)
  return ((void*)0);

 return ccio_find_ioc(dev->hw_path);
}
