
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct apei_resources {int ioport; int iomem; } ;


 int apei_res_add (int *,unsigned long,unsigned long) ;

int apei_resources_add(struct apei_resources *resources,
         unsigned long start, unsigned long size,
         bool iomem)
{
 if (iomem)
  return apei_res_add(&resources->iomem, start, size);
 else
  return apei_res_add(&resources->ioport, start, size);
}
