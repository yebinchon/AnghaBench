
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_partstat {scalar_t__ rw; scalar_t__ eof; scalar_t__ drv_file; scalar_t__ drv_block; } ;
struct st_buffer {int buffer_bytes; int read_pointer; } ;
struct scsi_tape {scalar_t__ ready; size_t partition; int block_size; struct st_buffer* buffer; struct st_partstat* ps; scalar_t__ pos_unknown; } ;


 int EIO ;
 int MTBSR ;
 scalar_t__ ST_FM_HIT ;
 void* ST_NOEOF ;
 scalar_t__ ST_READY ;
 scalar_t__ ST_WRITING ;
 int cross_eof (struct scsi_tape*,int ) ;
 int st_flush_write_buffer (struct scsi_tape*) ;
 int st_int_ioctl (struct scsi_tape*,int ,int) ;

__attribute__((used)) static int flush_buffer(struct scsi_tape *STp, int seek_next)
{
 int backspace, result;
 struct st_buffer *STbuffer;
 struct st_partstat *STps;

 STbuffer = STp->buffer;





 if (STp->pos_unknown)
  return (-EIO);

 if (STp->ready != ST_READY)
  return 0;
 STps = &(STp->ps[STp->partition]);
 if (STps->rw == ST_WRITING)
  return st_flush_write_buffer(STp);

 if (STp->block_size == 0)
  return 0;

 backspace = ((STp->buffer)->buffer_bytes +
       (STp->buffer)->read_pointer) / STp->block_size -
     ((STp->buffer)->read_pointer + STp->block_size - 1) /
     STp->block_size;
 (STp->buffer)->buffer_bytes = 0;
 (STp->buffer)->read_pointer = 0;
 result = 0;
 if (!seek_next) {
  if (STps->eof == ST_FM_HIT) {
   result = cross_eof(STp, 0);
   if (!result)
    STps->eof = ST_NOEOF;
   else {
    if (STps->drv_file >= 0)
     STps->drv_file++;
    STps->drv_block = 0;
   }
  }
  if (!result && backspace > 0)
   result = st_int_ioctl(STp, MTBSR, backspace);
 } else if (STps->eof == ST_FM_HIT) {
  if (STps->drv_file >= 0)
   STps->drv_file++;
  STps->drv_block = 0;
  STps->eof = ST_NOEOF;
 }
 return result;

}
