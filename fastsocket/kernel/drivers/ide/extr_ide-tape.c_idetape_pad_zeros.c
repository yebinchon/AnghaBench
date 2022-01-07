
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int buffer_size; int buf; } ;
typedef TYPE_1__ idetape_tape_t ;
struct TYPE_6__ {TYPE_1__* driver_data; } ;
typedef TYPE_2__ ide_drive_t ;


 int REQ_IDETAPE_WRITE ;
 int idetape_queue_rw_tail (TYPE_2__*,int ,unsigned int) ;
 int memset (int ,int ,int ) ;
 unsigned int min (int ,int) ;

__attribute__((used)) static void idetape_pad_zeros(ide_drive_t *drive, int bcount)
{
 idetape_tape_t *tape = drive->driver_data;

 memset(tape->buf, 0, tape->buffer_size);

 while (bcount) {
  unsigned int count = min(tape->buffer_size, bcount);

  idetape_queue_rw_tail(drive, REQ_IDETAPE_WRITE, count);
  bcount -= count;
 }
}
