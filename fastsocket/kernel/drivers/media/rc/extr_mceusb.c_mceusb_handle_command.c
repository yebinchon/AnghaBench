
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mceusb_dev {int* buf_in; int tx_mask; int learning_enabled; TYPE_1__* rc; } ;
struct TYPE_2__ {int timeout; } ;





 int US_TO_NS (int) ;

__attribute__((used)) static void mceusb_handle_command(struct mceusb_dev *ir, int index)
{
 u8 hi = ir->buf_in[index + 1] & 0xff;
 u8 lo = ir->buf_in[index + 2] & 0xff;

 switch (ir->buf_in[index]) {

 case 129:
  ir->rc->timeout = US_TO_NS((hi << 8 | lo) / 2);
  break;


 case 128:
  ir->tx_mask = hi;
  break;
 case 130:
  ir->learning_enabled = (hi == 0x02);
  break;
 default:
  break;
 }
}
