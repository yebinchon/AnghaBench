
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fc_rport_libfc_priv {int e_d_tov; } ;
struct fc_fcp_pkt {TYPE_1__* rport; } ;
struct TYPE_2__ {struct fc_rport_libfc_priv* dd_data; } ;


 unsigned int HZ ;
 unsigned int msecs_to_jiffies (int ) ;

__attribute__((used)) static inline unsigned int get_fsp_rec_tov(struct fc_fcp_pkt *fsp)
{
 struct fc_rport_libfc_priv *rpriv = fsp->rport->dd_data;

 return msecs_to_jiffies(rpriv->e_d_tov) + HZ;
}
