
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_lport {int service_params; } ;
struct fc4_prov {scalar_t__ recv; } ;
typedef enum fc_fh_type { ____Placeholder_fc_fh_type } fc_fh_type ;


 int BUG_ON (int) ;
 int FCP_SPPF_TARG_FCN ;
 int FC_FC4_PROV_SIZE ;
 int FC_TYPE_FCP ;
 struct fc4_prov** fc_passive_prov ;

void fc_fc4_conf_lport_params(struct fc_lport *lport, enum fc_fh_type type)
{
 struct fc4_prov *prov_entry;
 BUG_ON(type >= FC_FC4_PROV_SIZE);
 BUG_ON(!lport);
 prov_entry = fc_passive_prov[type];
 if (type == FC_TYPE_FCP) {
  if (prov_entry && prov_entry->recv)
   lport->service_params |= FCP_SPPF_TARG_FCN;
 }
}
