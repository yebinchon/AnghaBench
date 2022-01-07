
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libfc_function_template {int dummy; } ;
struct fcoe_ctlr {int mode; } ;
struct fc_lport {int tt; } ;


 int ENOMEM ;
 int fc_disc_init (struct fc_lport*) ;
 int fc_elsct_init (struct fc_lport*) ;
 int fc_exch_init (struct fc_lport*) ;
 scalar_t__ fc_fcp_init (struct fc_lport*) ;
 int fc_lport_init (struct fc_lport*) ;
 int fc_rport_init (struct fc_lport*) ;
 int fcoe_ctlr_mode_set (struct fc_lport*,struct fcoe_ctlr*,int ) ;
 int memcpy (int *,struct libfc_function_template const*,int) ;

int fcoe_libfc_config(struct fc_lport *lport, struct fcoe_ctlr *fip,
        const struct libfc_function_template *tt, int init_fcp)
{

 memcpy(&lport->tt, tt, sizeof(*tt));
 if (init_fcp && fc_fcp_init(lport))
  return -ENOMEM;
 fc_exch_init(lport);
 fc_elsct_init(lport);
 fc_lport_init(lport);
 fc_rport_init(lport);
 fc_disc_init(lport);
 fcoe_ctlr_mode_set(lport, fip, fip->mode);
 return 0;
}
