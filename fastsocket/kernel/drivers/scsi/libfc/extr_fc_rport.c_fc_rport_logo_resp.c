
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fc_seq {int dummy; } ;
struct fc_lport {int dummy; } ;
struct fc_frame {int dummy; } ;
struct TYPE_2__ {int did; } ;


 int FC_RPORT_ID_DBG (struct fc_lport*,int ,char*,int ) ;
 scalar_t__ IS_ERR (struct fc_frame*) ;
 int fc_els_resp_type (struct fc_frame*) ;
 int fc_frame_free (struct fc_frame*) ;
 TYPE_1__* fc_seq_exch (struct fc_seq*) ;

__attribute__((used)) static void fc_rport_logo_resp(struct fc_seq *sp, struct fc_frame *fp,
          void *lport_arg)
{
 struct fc_lport *lport = lport_arg;

 FC_RPORT_ID_DBG(lport, fc_seq_exch(sp)->did,
   "Received a LOGO %s\n", fc_els_resp_type(fp));
 if (IS_ERR(fp))
  return;
 fc_frame_free(fp);
}
