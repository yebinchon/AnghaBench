
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ide_cmd {unsigned int nbytes; unsigned int nleft; int tf_flags; scalar_t__ last_xfer_len; } ;
typedef int ide_drive_t ;


 int IDE_TFLAG_WRITE ;
 int ide_complete_rq (int *,int ,unsigned int) ;

__attribute__((used)) static void ide_cd_error_cmd(ide_drive_t *drive, struct ide_cmd *cmd)
{
 unsigned int nr_bytes = cmd->nbytes - cmd->nleft;

 if (cmd->tf_flags & IDE_TFLAG_WRITE)
  nr_bytes -= cmd->last_xfer_len;

 if (nr_bytes > 0)
  ide_complete_rq(drive, 0, nr_bytes);
}
