
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_partstat {scalar_t__ drv_file; int eof; scalar_t__ drv_block; } ;
struct osst_tape {size_t partition; scalar_t__ write_type; struct st_partstat* ps; } ;
struct osst_request {int dummy; } ;


 scalar_t__ OS_WRITE_NEW_MARK ;
 int ST_FM ;
 int osst_flush_drive_buffer (struct osst_tape*,struct osst_request**) ;
 int osst_write_eod (struct osst_tape*,struct osst_request**) ;
 int osst_write_filemark (struct osst_tape*,struct osst_request**) ;
 int osst_write_header (struct osst_tape*,struct osst_request**,int) ;

__attribute__((used)) static int osst_write_trailer(struct osst_tape *STp, struct osst_request ** aSRpnt, int leave_at_EOT)
{
 struct st_partstat * STps = &(STp->ps[STp->partition]);
 int result = 0;

 if (STp->write_type != OS_WRITE_NEW_MARK) {

  result = osst_flush_drive_buffer(STp, aSRpnt);
  if (result < 0) goto out;
  result = osst_write_filemark(STp, aSRpnt);
  if (result < 0) goto out;

  if (STps->drv_file >= 0)
   STps->drv_file++ ;
  STps->drv_block = 0;
 }
 result = osst_write_eod(STp, aSRpnt);
 osst_write_header(STp, aSRpnt, leave_at_EOT);

 STps->eof = ST_FM;
out:
 return result;
}
