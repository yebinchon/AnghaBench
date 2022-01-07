
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u8 ;
struct ide_atapi_pc {int dummy; } ;
struct gendisk {int dummy; } ;
struct TYPE_9__ {scalar_t__ chrdev_dir; struct gendisk* disk; } ;
typedef TYPE_1__ idetape_tape_t ;
struct TYPE_10__ {TYPE_1__* driver_data; } ;
typedef TYPE_2__ ide_drive_t ;


 int HZ ;
 scalar_t__ IDETAPE_DIR_READ ;
 int __ide_tape_discard_merge_buffer (TYPE_2__*) ;
 int ide_queue_pc_tail (TYPE_2__*,struct gendisk*,struct ide_atapi_pc*,int *,int ) ;
 int ide_tape_read_position (TYPE_2__*) ;
 int idetape_create_locate_cmd (TYPE_2__*,struct ide_atapi_pc*,unsigned int,int ,int) ;
 int idetape_wait_ready (TYPE_2__*,int) ;

__attribute__((used)) static int idetape_position_tape(ide_drive_t *drive, unsigned int block,
  u8 partition, int skip)
{
 idetape_tape_t *tape = drive->driver_data;
 struct gendisk *disk = tape->disk;
 int ret;
 struct ide_atapi_pc pc;

 if (tape->chrdev_dir == IDETAPE_DIR_READ)
  __ide_tape_discard_merge_buffer(drive);
 idetape_wait_ready(drive, 60 * 5 * HZ);
 idetape_create_locate_cmd(drive, &pc, block, partition, skip);
 ret = ide_queue_pc_tail(drive, disk, &pc, ((void*)0), 0);
 if (ret)
  return ret;

 ret = ide_tape_read_position(drive);
 if (ret < 0)
  return ret;
 return 0;
}
