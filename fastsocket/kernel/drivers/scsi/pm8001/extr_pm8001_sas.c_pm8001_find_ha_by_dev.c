
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sas_ha_struct {struct pm8001_hba_info* lldd_ha; } ;
struct pm8001_hba_info {int dummy; } ;
struct domain_device {TYPE_1__* port; } ;
struct TYPE_2__ {struct sas_ha_struct* ha; } ;



__attribute__((used)) static
struct pm8001_hba_info *pm8001_find_ha_by_dev(struct domain_device *dev)
{
 struct sas_ha_struct *sha = dev->port->ha;
 struct pm8001_hba_info *pm8001_ha = sha->lldd_ha;
 return pm8001_ha;
}
