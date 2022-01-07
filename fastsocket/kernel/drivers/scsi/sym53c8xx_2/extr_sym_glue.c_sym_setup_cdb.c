
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sym_hcb {int dummy; } ;
struct TYPE_3__ {int size; int addr; } ;
struct TYPE_4__ {TYPE_1__ cmd; } ;
struct sym_ccb {TYPE_2__ phys; int cdb_buf; } ;
struct scsi_cmnd {int cmd_len; int cmnd; } ;


 int CCB_BA (struct sym_ccb*,int ) ;
 int * cdb_buf ;
 int cpu_to_scr (int ) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static inline int sym_setup_cdb(struct sym_hcb *np, struct scsi_cmnd *cmd, struct sym_ccb *cp)
{
 memcpy(cp->cdb_buf, cmd->cmnd, cmd->cmd_len);

 cp->phys.cmd.addr = CCB_BA(cp, cdb_buf[0]);
 cp->phys.cmd.size = cpu_to_scr(cmd->cmd_len);

 return 0;
}
