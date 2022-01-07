
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sas_ha_struct {int dev; } ;
typedef enum ha_event { ____Placeholder_ha_event } ha_event ;


 int SAS_DPRINTK (char*,int ,int ) ;
 int dev_name (int ) ;
 int * sas_hae_str ;

void sas_dprint_hae(struct sas_ha_struct *sas_ha, enum ha_event he)
{
 SAS_DPRINTK("ha %s: %s event\n", dev_name(sas_ha->dev),
      sas_hae_str[he]);
}
