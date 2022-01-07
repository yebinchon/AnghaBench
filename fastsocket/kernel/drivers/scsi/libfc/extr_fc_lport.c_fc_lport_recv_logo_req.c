
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* seq_els_rsp_send ) (struct fc_frame*,int ,int *) ;} ;
struct fc_lport {TYPE_1__ tt; } ;
struct fc_frame {int dummy; } ;


 int ELS_LS_ACC ;
 int fc_frame_free (struct fc_frame*) ;
 int fc_lport_enter_reset (struct fc_lport*) ;
 int stub1 (struct fc_frame*,int ,int *) ;

__attribute__((used)) static void fc_lport_recv_logo_req(struct fc_lport *lport, struct fc_frame *fp)
{
 lport->tt.seq_els_rsp_send(fp, ELS_LS_ACC, ((void*)0));
 fc_lport_enter_reset(lport);
 fc_frame_free(fp);
}
