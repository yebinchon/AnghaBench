
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int port_id; } ;
struct fc_rport_priv {int kref; TYPE_2__ ids; } ;
struct fc_ns_fid {int dummy; } ;
struct TYPE_3__ {int (* elsct_send ) (struct fc_lport*,int ,struct fc_frame*,int ,int ,struct fc_rport_priv*,int) ;} ;
struct fc_lport {int r_a_tov; TYPE_1__ tt; } ;
struct fc_frame {int dummy; } ;
struct fc_ct_hdr {int dummy; } ;


 int ENOMEM ;
 int FC_NS_GPN_ID ;
 int fc_disc_gpn_id_resp ;
 struct fc_frame* fc_frame_alloc (struct fc_lport*,int) ;
 int kref_get (int *) ;
 int stub1 (struct fc_lport*,int ,struct fc_frame*,int ,int ,struct fc_rport_priv*,int) ;

__attribute__((used)) static int fc_disc_gpn_id_req(struct fc_lport *lport,
         struct fc_rport_priv *rdata)
{
 struct fc_frame *fp;

 fp = fc_frame_alloc(lport, sizeof(struct fc_ct_hdr) +
       sizeof(struct fc_ns_fid));
 if (!fp)
  return -ENOMEM;
 if (!lport->tt.elsct_send(lport, rdata->ids.port_id, fp, FC_NS_GPN_ID,
      fc_disc_gpn_id_resp, rdata,
      3 * lport->r_a_tov))
  return -ENOMEM;
 kref_get(&rdata->kref);
 return 0;
}
