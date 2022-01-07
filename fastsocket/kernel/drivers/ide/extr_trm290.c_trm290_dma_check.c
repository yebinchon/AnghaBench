
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ide_cmd {int tf_flags; } ;
typedef int ide_drive_t ;


 int IDE_TFLAG_WRITE ;

__attribute__((used)) static int trm290_dma_check(ide_drive_t *drive, struct ide_cmd *cmd)
{
 if (cmd->tf_flags & IDE_TFLAG_WRITE) {




 }
 return 0;
}
