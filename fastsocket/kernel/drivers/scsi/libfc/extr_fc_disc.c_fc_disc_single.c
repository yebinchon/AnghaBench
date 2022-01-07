
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fc_rport_priv {scalar_t__ disc_id; } ;
struct TYPE_2__ {struct fc_rport_priv* (* rport_create ) (struct fc_lport*,int ) ;} ;
struct fc_lport {TYPE_1__ tt; } ;
struct fc_disc_port {int port_id; } ;


 int ENOMEM ;
 int fc_disc_gpn_id_req (struct fc_lport*,struct fc_rport_priv*) ;
 struct fc_rport_priv* stub1 (struct fc_lport*,int ) ;

__attribute__((used)) static int fc_disc_single(struct fc_lport *lport, struct fc_disc_port *dp)
{
 struct fc_rport_priv *rdata;

 rdata = lport->tt.rport_create(lport, dp->port_id);
 if (!rdata)
  return -ENOMEM;
 rdata->disc_id = 0;
 return fc_disc_gpn_id_req(lport, rdata);
}
