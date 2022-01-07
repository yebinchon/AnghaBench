
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_6__ {void* wValue; void* wIndex; } ;
struct TYPE_8__ {size_t ctrl_out_idx; TYPE_4__* ctrl_urb; TYPE_2__* ctrl_buff; TYPE_1__ ctrl_write; int ctrl_out_pipe; scalar_t__ ctrl_cnt; } ;
typedef TYPE_3__ hfcusb_data ;
struct TYPE_9__ {scalar_t__ transfer_buffer_length; int * transfer_buffer; int * setup_packet; int pipe; } ;
struct TYPE_7__ {int reg_val; int hfc_reg; } ;


 int GFP_ATOMIC ;
 void* cpu_to_le16 (int ) ;
 int usb_submit_urb (TYPE_4__*,int ) ;

__attribute__((used)) static void
ctrl_start_transfer(hfcusb_data * hfc)
{
 if (hfc->ctrl_cnt) {
  hfc->ctrl_urb->pipe = hfc->ctrl_out_pipe;
  hfc->ctrl_urb->setup_packet = (u_char *) & hfc->ctrl_write;
  hfc->ctrl_urb->transfer_buffer = ((void*)0);
  hfc->ctrl_urb->transfer_buffer_length = 0;
  hfc->ctrl_write.wIndex =
      cpu_to_le16(hfc->ctrl_buff[hfc->ctrl_out_idx].hfc_reg);
  hfc->ctrl_write.wValue =
      cpu_to_le16(hfc->ctrl_buff[hfc->ctrl_out_idx].reg_val);

  usb_submit_urb(hfc->ctrl_urb, GFP_ATOMIC);
 }
}
