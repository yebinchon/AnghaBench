
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fcoe_rport {int dummy; } ;
struct fc_rport_priv {int dummy; } ;



__attribute__((used)) static inline struct fcoe_rport *fcoe_ctlr_rport(struct fc_rport_priv *rdata)
{
 return (struct fcoe_rport *)(rdata + 1);
}
