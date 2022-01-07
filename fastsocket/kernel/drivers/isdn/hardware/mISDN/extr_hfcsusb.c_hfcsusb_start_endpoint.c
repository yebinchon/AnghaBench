
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int usb_complete_t ;
struct hfcsusb {scalar_t__ cfg_used; TYPE_1__* fifos; } ;
struct TYPE_3__ {scalar_t__ active; } ;


 scalar_t__ CNF_3INT3ISO ;
 scalar_t__ CNF_3ISO3ISO ;
 scalar_t__ CNF_4INT3ISO ;
 scalar_t__ CNF_4ISO3ISO ;
 size_t HFCUSB_B1_RX ;
 int HFCUSB_B1_TX ;
 size_t HFCUSB_B2_RX ;
 int HFCUSB_B2_TX ;
 size_t HFCUSB_D_RX ;
 int HFCUSB_D_TX ;
 size_t HFCUSB_PCM_RX ;




 int ISOC_PACKETS_B ;
 int ISOC_PACKETS_D ;
 int rx_iso_complete ;
 int start_int_fifo (TYPE_1__*) ;
 int start_isoc_chain (TYPE_1__*,int ,int ,int) ;
 int tx_iso_complete ;

__attribute__((used)) static void
hfcsusb_start_endpoint(struct hfcsusb *hw, int channel)
{

 if ((channel == 129) && (hw->fifos[HFCUSB_D_RX].active))
  return;
 if ((channel == 131) && (hw->fifos[HFCUSB_B1_RX].active))
  return;
 if ((channel == 130) && (hw->fifos[HFCUSB_B2_RX].active))
  return;
 if ((channel == 128) && (hw->fifos[HFCUSB_PCM_RX].active))
  return;


 if (hw->cfg_used == CNF_3INT3ISO || hw->cfg_used == CNF_4INT3ISO)
  start_int_fifo(hw->fifos + channel*2 + 1);


 if (hw->cfg_used == CNF_3ISO3ISO || hw->cfg_used == CNF_4ISO3ISO) {
  switch (channel) {
  case 129:
   start_isoc_chain(hw->fifos + HFCUSB_D_RX,
    ISOC_PACKETS_D,
    (usb_complete_t)rx_iso_complete,
    16);
   break;
  case 128:
   start_isoc_chain(hw->fifos + HFCUSB_PCM_RX,
    ISOC_PACKETS_D,
    (usb_complete_t)rx_iso_complete,
    16);
   break;
  case 131:
   start_isoc_chain(hw->fifos + HFCUSB_B1_RX,
    ISOC_PACKETS_B,
    (usb_complete_t)rx_iso_complete,
    16);
   break;
  case 130:
   start_isoc_chain(hw->fifos + HFCUSB_B2_RX,
    ISOC_PACKETS_B,
    (usb_complete_t)rx_iso_complete,
    16);
   break;
  }
 }


 switch (channel) {
 case 129:
  start_isoc_chain(hw->fifos + HFCUSB_D_TX,
   ISOC_PACKETS_B,
   (usb_complete_t)tx_iso_complete, 1);
  break;
 case 131:
  start_isoc_chain(hw->fifos + HFCUSB_B1_TX,
   ISOC_PACKETS_D,
   (usb_complete_t)tx_iso_complete, 1);
  break;
 case 130:
  start_isoc_chain(hw->fifos + HFCUSB_B2_TX,
   ISOC_PACKETS_B,
   (usb_complete_t)tx_iso_complete, 1);
  break;
 }
}
