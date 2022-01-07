
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int result; int (* scsi_done ) (struct scsi_cmnd*) ;} ;
struct fsc_state {int phase; struct scsi_cmnd* current_req; } ;


 int idle ;
 int mac53c94_start (struct fsc_state*) ;
 int stub1 (struct scsi_cmnd*) ;

__attribute__((used)) static void cmd_done(struct fsc_state *state, int result)
{
 struct scsi_cmnd *cmd;

 cmd = state->current_req;
 if (cmd != 0) {
  cmd->result = result;
  (*cmd->scsi_done)(cmd);
  state->current_req = ((void*)0);
 }
 state->phase = idle;
 mac53c94_start(state);
}
