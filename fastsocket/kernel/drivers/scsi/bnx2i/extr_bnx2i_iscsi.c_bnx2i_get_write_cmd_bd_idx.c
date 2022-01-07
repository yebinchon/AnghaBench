
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct iscsi_bd {scalar_t__ buffer_length; } ;
struct TYPE_2__ {struct iscsi_bd* bd_tbl; } ;
struct bnx2i_cmd {TYPE_1__ io_tbl; } ;



__attribute__((used)) static void bnx2i_get_write_cmd_bd_idx(struct bnx2i_cmd *cmd, u32 buf_off,
           u32 *start_bd_off, u32 *start_bd_idx)
{
 struct iscsi_bd *bd_tbl = cmd->io_tbl.bd_tbl;
 u32 cur_offset = 0;
 u32 cur_bd_idx = 0;

 if (buf_off) {
  while (buf_off >= (cur_offset + bd_tbl->buffer_length)) {
   cur_offset += bd_tbl->buffer_length;
   cur_bd_idx++;
   bd_tbl++;
  }
 }

 *start_bd_off = buf_off - cur_offset;
 *start_bd_idx = cur_bd_idx;
}
