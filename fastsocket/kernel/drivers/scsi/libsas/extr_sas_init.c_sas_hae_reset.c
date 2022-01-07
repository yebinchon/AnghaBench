
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;
struct sas_ha_struct {int pending; } ;
struct sas_ha_event {struct sas_ha_struct* ha; } ;


 int HAE_RESET ;
 int clear_bit (int ,int *) ;
 struct sas_ha_event* to_sas_ha_event (struct work_struct*) ;

void sas_hae_reset(struct work_struct *work)
{
 struct sas_ha_event *ev = to_sas_ha_event(work);
 struct sas_ha_struct *ha = ev->ha;

 clear_bit(HAE_RESET, &ha->pending);
}
