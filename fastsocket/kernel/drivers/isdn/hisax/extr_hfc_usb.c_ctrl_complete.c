
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct urb {int dev; scalar_t__ context; } ;
struct TYPE_3__ {size_t ctrl_out_idx; scalar_t__ ctrl_cnt; int * ctrl_buff; int dev; } ;
typedef TYPE_1__ hfcusb_data ;
typedef int ctrl_buft ;


 size_t HFC_CTRL_BUFSIZE ;
 int ctrl_start_transfer (TYPE_1__*) ;

__attribute__((used)) static void
ctrl_complete(struct urb *urb)
{
 hfcusb_data *hfc = (hfcusb_data *) urb->context;
 ctrl_buft *buf;

 urb->dev = hfc->dev;
 if (hfc->ctrl_cnt) {
  buf = &hfc->ctrl_buff[hfc->ctrl_out_idx];
  hfc->ctrl_cnt--;
  if (++hfc->ctrl_out_idx >= HFC_CTRL_BUFSIZE)
   hfc->ctrl_out_idx = 0;

  ctrl_start_transfer(hfc);
 }
}
