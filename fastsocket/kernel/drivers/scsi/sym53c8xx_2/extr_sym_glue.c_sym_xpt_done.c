
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sym_ucmd {scalar_t__ eh_done; } ;
struct sym_hcb {int dummy; } ;
struct scsi_pointer {int dummy; } ;
struct scsi_cmnd {int (* scsi_done ) (struct scsi_cmnd*) ;} ;


 int BUILD_BUG_ON (int) ;
 struct sym_ucmd* SYM_UCMD_PTR (struct scsi_cmnd*) ;
 int complete (scalar_t__) ;
 int scsi_dma_unmap (struct scsi_cmnd*) ;
 int stub1 (struct scsi_cmnd*) ;

void sym_xpt_done(struct sym_hcb *np, struct scsi_cmnd *cmd)
{
 struct sym_ucmd *ucmd = SYM_UCMD_PTR(cmd);
 BUILD_BUG_ON(sizeof(struct scsi_pointer) < sizeof(struct sym_ucmd));

 if (ucmd->eh_done)
  complete(ucmd->eh_done);

 scsi_dma_unmap(cmd);
 cmd->scsi_done(cmd);
}
