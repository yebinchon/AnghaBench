
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asd_ha_struct {int dummy; } ;


 int asd_init_cseq_mdp (struct asd_ha_struct*) ;
 int asd_init_cseq_mip (struct asd_ha_struct*) ;

__attribute__((used)) static void asd_init_cseq_scratch(struct asd_ha_struct *asd_ha)
{
 asd_init_cseq_mip(asd_ha);
 asd_init_cseq_mdp(asd_ha);
}
