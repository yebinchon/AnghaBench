
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct gendisk {int dummy; } ;
struct TYPE_6__ {int sense_key; int asc; int ascq; struct gendisk* disk; } ;
typedef TYPE_1__ idetape_tape_t ;
struct TYPE_7__ {int atapi_flags; TYPE_1__* driver_data; } ;
typedef TYPE_2__ ide_drive_t ;


 int EIO ;
 int ENOMEDIUM ;
 int IDETAPE_LU_LOAD_MASK ;
 int IDE_AFLAG_MEDIUM_PRESENT ;
 int ide_do_start_stop (TYPE_2__*,struct gendisk*,int ) ;
 scalar_t__ ide_do_test_unit_ready (TYPE_2__*,struct gendisk*) ;
 int ilog2 (int ) ;
 scalar_t__ jiffies ;
 int msleep (int) ;
 int set_bit (int ,int *) ;
 scalar_t__ time_before (scalar_t__,unsigned long) ;

__attribute__((used)) static int idetape_wait_ready(ide_drive_t *drive, unsigned long timeout)
{
 idetape_tape_t *tape = drive->driver_data;
 struct gendisk *disk = tape->disk;
 int load_attempted = 0;


 set_bit(ilog2(IDE_AFLAG_MEDIUM_PRESENT), &drive->atapi_flags);
 timeout += jiffies;
 while (time_before(jiffies, timeout)) {
  if (ide_do_test_unit_ready(drive, disk) == 0)
   return 0;
  if ((tape->sense_key == 2 && tape->asc == 4 && tape->ascq == 2)
      || (tape->asc == 0x3A)) {

   if (load_attempted)
    return -ENOMEDIUM;
   ide_do_start_stop(drive, disk, IDETAPE_LU_LOAD_MASK);
   load_attempted = 1;

  } else if (!(tape->sense_key == 2 && tape->asc == 4 &&
        (tape->ascq == 1 || tape->ascq == 8)))
   return -EIO;
  msleep(100);
 }
 return -EIO;
}
