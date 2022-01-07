
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct ide_cmd {int tf_flags; } ;
typedef int ide_startstop_t ;
struct TYPE_6__ {int dev_flags; int name; int bad_wstat; } ;
typedef TYPE_1__ ide_drive_t ;


 int ATA_DRQ ;
 int IDE_DFLAG_LBA48 ;
 int IDE_DFLAG_UNMASK ;
 int IDE_TFLAG_MULTI_PIO ;
 int WAIT_DRQ ;
 int WAIT_WORSTCASE ;
 int ide_pio_datablock (TYPE_1__*,struct ide_cmd*,int) ;
 int ide_set_handler (TYPE_1__*,int *,int ) ;
 int ide_started ;
 scalar_t__ ide_wait_stat (int *,TYPE_1__*,int ,int ,int ) ;
 int local_irq_disable () ;
 int pr_err (char*,int ,char*,char*) ;
 int task_pio_intr ;

__attribute__((used)) static ide_startstop_t pre_task_out_intr(ide_drive_t *drive,
      struct ide_cmd *cmd)
{
 ide_startstop_t startstop;

 if (ide_wait_stat(&startstop, drive, ATA_DRQ,
     drive->bad_wstat, WAIT_DRQ)) {
  pr_err("%s: no DRQ after issuing %sWRITE%s\n", drive->name,
   (cmd->tf_flags & IDE_TFLAG_MULTI_PIO) ? "MULT" : "",
   (drive->dev_flags & IDE_DFLAG_LBA48) ? "_EXT" : "");
  return startstop;
 }

 if ((drive->dev_flags & IDE_DFLAG_UNMASK) == 0)
  local_irq_disable();

 ide_set_handler(drive, &task_pio_intr, WAIT_WORSTCASE);

 ide_pio_datablock(drive, cmd, 1);

 return ide_started;
}
