
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fc_ns_gid_ft {int dummy; } ;
struct TYPE_2__ {scalar_t__ (* elsct_send ) (struct fc_lport*,int ,struct fc_frame*,int ,int ,struct fc_disc*,int) ;} ;
struct fc_lport {int r_a_tov; TYPE_1__ tt; } ;
struct fc_frame {int dummy; } ;
struct fc_disc {int pending; scalar_t__ seq_count; scalar_t__ buf_len; scalar_t__ requested; } ;
struct fc_ct_hdr {int dummy; } ;


 int FC_NS_GPN_FT ;
 int WARN_ON (int) ;
 int fc_disc_error (struct fc_disc*,int *) ;
 int fc_disc_gpn_ft_resp ;
 struct fc_lport* fc_disc_lport (struct fc_disc*) ;
 struct fc_frame* fc_frame_alloc (struct fc_lport*,int) ;
 int fc_lport_test_ready (struct fc_lport*) ;
 scalar_t__ stub1 (struct fc_lport*,int ,struct fc_frame*,int ,int ,struct fc_disc*,int) ;

__attribute__((used)) static void fc_disc_gpn_ft_req(struct fc_disc *disc)
{
 struct fc_frame *fp;
 struct fc_lport *lport = fc_disc_lport(disc);

 WARN_ON(!fc_lport_test_ready(lport));

 disc->pending = 1;
 disc->requested = 0;

 disc->buf_len = 0;
 disc->seq_count = 0;
 fp = fc_frame_alloc(lport,
       sizeof(struct fc_ct_hdr) +
       sizeof(struct fc_ns_gid_ft));
 if (!fp)
  goto err;

 if (lport->tt.elsct_send(lport, 0, fp,
     FC_NS_GPN_FT,
     fc_disc_gpn_ft_resp,
     disc, 3 * lport->r_a_tov))
  return;
err:
 fc_disc_error(disc, ((void*)0));
}
