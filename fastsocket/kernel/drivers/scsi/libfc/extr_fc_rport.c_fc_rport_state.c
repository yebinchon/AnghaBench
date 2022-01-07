
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_rport_priv {size_t rp_state; } ;


 char** fc_rport_state_names ;

__attribute__((used)) static const char *fc_rport_state(struct fc_rport_priv *rdata)
{
 const char *cp;

 cp = fc_rport_state_names[rdata->rp_state];
 if (!cp)
  cp = "Unknown";
 return cp;
}
