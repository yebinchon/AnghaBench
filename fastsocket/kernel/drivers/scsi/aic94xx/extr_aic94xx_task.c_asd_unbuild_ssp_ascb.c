
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asd_ascb {int dummy; } ;


 int asd_unmap_scatterlist (struct asd_ascb*) ;

__attribute__((used)) static void asd_unbuild_ssp_ascb(struct asd_ascb *a)
{
 asd_unmap_scatterlist(a);
}
