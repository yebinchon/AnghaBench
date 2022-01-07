
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct apei_resources {int ioport; int iomem; } ;


 int apei_res_clean (int *) ;

void apei_resources_fini(struct apei_resources *resources)
{
 apei_res_clean(&resources->iomem);
 apei_res_clean(&resources->ioport);
}
