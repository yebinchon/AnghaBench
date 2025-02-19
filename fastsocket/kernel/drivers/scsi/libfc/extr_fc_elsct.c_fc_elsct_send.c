
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct fc_seq {int dummy; } ;
struct TYPE_2__ {struct fc_seq* (* exch_seq_send ) (struct fc_lport*,struct fc_frame*,void (*) (struct fc_seq*,struct fc_frame*,void*),int *,void*,int ) ;} ;
struct fc_lport {TYPE_1__ tt; int port_id; } ;
struct fc_frame {int dummy; } ;
typedef enum fc_rctl { ____Placeholder_fc_rctl } fc_rctl ;
typedef enum fc_fh_type { ____Placeholder_fc_fh_type } fc_fh_type ;


 unsigned int ELS_AUTH_ELS ;
 unsigned int ELS_LS_RJT ;
 int FC_FCTL_REQ ;
 int fc_ct_fill (struct fc_lport*,int ,struct fc_frame*,unsigned int,int*,int*,int *) ;
 int fc_els_fill (struct fc_lport*,int ,struct fc_frame*,unsigned int,int*,int*) ;
 int fc_fill_fc_hdr (struct fc_frame*,int,int ,int ,int,int ,int ) ;
 int fc_frame_free (struct fc_frame*) ;
 struct fc_seq* stub1 (struct fc_lport*,struct fc_frame*,void (*) (struct fc_seq*,struct fc_frame*,void*),int *,void*,int ) ;

struct fc_seq *fc_elsct_send(struct fc_lport *lport, u32 did,
        struct fc_frame *fp, unsigned int op,
        void (*resp)(struct fc_seq *,
       struct fc_frame *,
       void *),
        void *arg, u32 timer_msec)
{
 enum fc_rctl r_ctl;
 enum fc_fh_type fh_type;
 int rc;


 if ((op >= ELS_LS_RJT) && (op <= ELS_AUTH_ELS))
  rc = fc_els_fill(lport, did, fp, op, &r_ctl, &fh_type);
 else {

  rc = fc_ct_fill(lport, did, fp, op, &r_ctl, &fh_type, &did);
 }

 if (rc) {
  fc_frame_free(fp);
  return ((void*)0);
 }

 fc_fill_fc_hdr(fp, r_ctl, did, lport->port_id, fh_type,
         FC_FCTL_REQ, 0);

 return lport->tt.exch_seq_send(lport, fp, resp, ((void*)0), arg, timer_msec);
}
