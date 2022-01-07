
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct srp_indirect_buf {int dummy; } ;
struct srp_direct_buf {int dummy; } ;
struct srp_cmd {int buf_fmt; int data_out_desc_cnt; } ;





 int eprintk (char*,int) ;

__attribute__((used)) static int data_out_desc_size(struct srp_cmd *cmd)
{
 int size = 0;
 u8 fmt = cmd->buf_fmt >> 4;

 switch (fmt) {
 case 128:
  break;
 case 130:
  size = sizeof(struct srp_direct_buf);
  break;
 case 129:
  size = sizeof(struct srp_indirect_buf) +
   sizeof(struct srp_direct_buf) * cmd->data_out_desc_cnt;
  break;
 default:
  eprintk("client error. Invalid data_out_format %x\n", fmt);
  break;
 }
 return size;
}
