
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_vport {int dummy; } ;


 int disable_vport (struct fc_vport*) ;
 int enable_vport (struct fc_vport*) ;

int
lpfc_vport_disable(struct fc_vport *fc_vport, bool disable)
{
 if (disable)
  return disable_vport(fc_vport);
 else
  return enable_vport(fc_vport);
}
