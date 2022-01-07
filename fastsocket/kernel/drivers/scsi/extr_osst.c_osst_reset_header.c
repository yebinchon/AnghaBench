
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct osst_tape {int eod_frame_ppos; int first_data_ppos; int first_mark_ppos; int last_mark_ppos; int last_mark_lbn; scalar_t__ filemark_cnt; scalar_t__ frame_in_buffer; scalar_t__ frame_seq_number; scalar_t__ logical_blk_num; int * header_cache; } ;
struct osst_request {int dummy; } ;
typedef int os_header_t ;


 int memset (int *,int ,int) ;
 int osst_write_header (struct osst_tape*,struct osst_request**,int) ;

__attribute__((used)) static int osst_reset_header(struct osst_tape * STp, struct osst_request ** aSRpnt)
{
 if (STp->header_cache != ((void*)0))
  memset(STp->header_cache, 0, sizeof(os_header_t));

 STp->logical_blk_num = STp->frame_seq_number = 0;
 STp->frame_in_buffer = 0;
 STp->eod_frame_ppos = STp->first_data_ppos = 0x0000000A;
 STp->filemark_cnt = 0;
 STp->first_mark_ppos = STp->last_mark_ppos = STp->last_mark_lbn = -1;
 return osst_write_header(STp, aSRpnt, 1);
}
