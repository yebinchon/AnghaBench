
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ chrdev_dir; int * buf; scalar_t__ valid; } ;
typedef TYPE_1__ idetape_tape_t ;
struct TYPE_5__ {int atapi_flags; TYPE_1__* driver_data; } ;
typedef TYPE_2__ ide_drive_t ;


 scalar_t__ IDETAPE_DIR_NONE ;
 scalar_t__ IDETAPE_DIR_READ ;
 int IDE_AFLAG_FILEMARK ;
 int clear_bit (int ,int *) ;
 int ilog2 (int ) ;
 int kfree (int *) ;

__attribute__((used)) static void __ide_tape_discard_merge_buffer(ide_drive_t *drive)
{
 idetape_tape_t *tape = drive->driver_data;

 if (tape->chrdev_dir != IDETAPE_DIR_READ)
  return;

 clear_bit(ilog2(IDE_AFLAG_FILEMARK), &drive->atapi_flags);
 tape->valid = 0;
 if (tape->buf != ((void*)0)) {
  kfree(tape->buf);
  tape->buf = ((void*)0);
 }

 tape->chrdev_dir = IDETAPE_DIR_NONE;
}
