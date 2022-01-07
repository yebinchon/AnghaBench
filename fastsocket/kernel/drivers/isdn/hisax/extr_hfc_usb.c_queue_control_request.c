
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ctrl_cnt; size_t ctrl_in_idx; TYPE_2__* ctrl_buff; } ;
typedef TYPE_1__ hfcusb_data ;
struct TYPE_6__ {int action; void* reg_val; void* hfc_reg; } ;
typedef TYPE_2__ ctrl_buft ;
typedef void* __u8 ;


 int HFC_CTRL_BUFSIZE ;
 int ctrl_start_transfer (TYPE_1__*) ;

__attribute__((used)) static int
queue_control_request(hfcusb_data * hfc, __u8 reg, __u8 val, int action)
{
 ctrl_buft *buf;

 if (hfc->ctrl_cnt >= HFC_CTRL_BUFSIZE)
  return (1);
 buf = &hfc->ctrl_buff[hfc->ctrl_in_idx];
 buf->hfc_reg = reg;
 buf->reg_val = val;
 buf->action = action;
 if (++hfc->ctrl_in_idx >= HFC_CTRL_BUFSIZE)
  hfc->ctrl_in_idx = 0;
 if (++hfc->ctrl_cnt == 1)
  ctrl_start_transfer(hfc);
 return (0);
}
