
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fc_fcp_pkt {scalar_t__ io_status; scalar_t__ cdb_status; int status_code; } ;


 int fc_fcp_send_abort (struct fc_fcp_pkt*) ;

__attribute__((used)) static void fc_fcp_recovery(struct fc_fcp_pkt *fsp, u8 code)
{
 fsp->status_code = code;
 fsp->cdb_status = 0;
 fsp->io_status = 0;




 fc_fcp_send_abort(fsp);
}
