
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int* b_mode; scalar_t__ disc_flag; } ;
typedef TYPE_1__ hfcusb_data ;
typedef int __u8 ;


 int DBG (int ,char*,int,int) ;
 int HFCUSB_CON_HDLC ;
 int HFCUSB_DBG_STATES ;
 int HFCUSB_FIFO ;
 int HFCUSB_INC_RES_F ;
 int HFCUSB_SCTRL ;
 int HFCUSB_SCTRL_R ;
 int L1_MODE_NULL ;
 int L1_MODE_TRANS ;
 int LED_B1_OFF ;
 int LED_B1_ON ;
 int LED_B2_OFF ;
 int LED_B2_ON ;
 int handle_led (TYPE_1__*,int ) ;
 int queue_control_request (TYPE_1__*,int ,int,int) ;

__attribute__((used)) static void
setup_bchannel(hfcusb_data * hfc, int channel, int mode)
{
 __u8 val, idx_table[2] = { 0, 2 };

 if (hfc->disc_flag) {
  return;
 }
 DBG(HFCUSB_DBG_STATES, "HFC-S USB: setting channel %d to mode %d",
     channel, mode);
 hfc->b_mode[channel] = mode;


 val = 0;
 if (mode != L1_MODE_NULL)
  val = 8;
 if (mode == L1_MODE_TRANS)
  val |= 2;


 queue_control_request(hfc, HFCUSB_FIFO, idx_table[channel], 1);
 queue_control_request(hfc, HFCUSB_CON_HDLC, val, 1);

 queue_control_request(hfc, HFCUSB_INC_RES_F, 2, 1);

 queue_control_request(hfc, HFCUSB_FIFO, idx_table[channel] + 1, 1);
 queue_control_request(hfc, HFCUSB_CON_HDLC, val, 1);

 queue_control_request(hfc, HFCUSB_INC_RES_F, 2, 1);

 val = 0x40;
 if (hfc->b_mode[0])
  val |= 1;
 if (hfc->b_mode[1])
  val |= 2;
 queue_control_request(hfc, HFCUSB_SCTRL, val, 1);

 val = 0;
 if (hfc->b_mode[0])
  val |= 1;
 if (hfc->b_mode[1])
  val |= 2;
 queue_control_request(hfc, HFCUSB_SCTRL_R, val, 1);

 if (mode == L1_MODE_NULL) {
  if (channel)
   handle_led(hfc, LED_B2_OFF);
  else
   handle_led(hfc, LED_B1_OFF);
 } else {
  if (channel)
   handle_led(hfc, LED_B2_ON);
  else
   handle_led(hfc, LED_B1_ON);
 }
}
