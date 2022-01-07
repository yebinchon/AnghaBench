
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dev_flags; scalar_t__ sleep; } ;
typedef TYPE_1__ ide_drive_t ;


 int IDE_DFLAG_SLEEPING ;
 unsigned long WAIT_WORSTCASE ;
 scalar_t__ jiffies ;

void ide_stall_queue (ide_drive_t *drive, unsigned long timeout)
{
 if (timeout > WAIT_WORSTCASE)
  timeout = WAIT_WORSTCASE;
 drive->sleep = timeout + jiffies;
 drive->dev_flags |= IDE_DFLAG_SLEEPING;
}
