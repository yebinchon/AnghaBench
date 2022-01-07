
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rt2x00lib_conf {TYPE_1__* conf; } ;
struct rt2x00_dev {int beacon_int; } ;
typedef enum dev_state { ____Placeholder_dev_state } dev_state ;
struct TYPE_2__ {int flags; int listen_interval; } ;


 int IEEE80211_CONF_PS ;
 int MAC_CSR11 ;
 int MAC_CSR11_AUTOWAKE ;
 int MAC_CSR11_DELAY_AFTER_TBCN ;
 int MAC_CSR11_TBCN_BEFORE_WAKEUP ;
 int MAC_CSR11_WAKEUP_LATENCY ;
 int REGISTER_TIMEOUT ;
 int STATE_AWAKE ;
 int STATE_SLEEP ;
 int USB_DEVICE_MODE ;
 int USB_MODE_SLEEP ;
 int USB_MODE_WAKEUP ;
 int rt2x00_set_field32 (int *,int ,int) ;
 int rt2x00usb_register_read (struct rt2x00_dev*,int ,int *) ;
 int rt2x00usb_register_write (struct rt2x00_dev*,int ,int ) ;
 int rt2x00usb_vendor_request_sw (struct rt2x00_dev*,int ,int ,int ,int ) ;

__attribute__((used)) static void rt73usb_config_ps(struct rt2x00_dev *rt2x00dev,
    struct rt2x00lib_conf *libconf)
{
 enum dev_state state =
     (libconf->conf->flags & IEEE80211_CONF_PS) ?
  STATE_SLEEP : STATE_AWAKE;
 u32 reg;

 if (state == STATE_SLEEP) {
  rt2x00usb_register_read(rt2x00dev, MAC_CSR11, &reg);
  rt2x00_set_field32(&reg, MAC_CSR11_DELAY_AFTER_TBCN,
       rt2x00dev->beacon_int - 10);
  rt2x00_set_field32(&reg, MAC_CSR11_TBCN_BEFORE_WAKEUP,
       libconf->conf->listen_interval - 1);
  rt2x00_set_field32(&reg, MAC_CSR11_WAKEUP_LATENCY, 5);


  rt2x00_set_field32(&reg, MAC_CSR11_AUTOWAKE, 0);
  rt2x00usb_register_write(rt2x00dev, MAC_CSR11, reg);

  rt2x00_set_field32(&reg, MAC_CSR11_AUTOWAKE, 1);
  rt2x00usb_register_write(rt2x00dev, MAC_CSR11, reg);

  rt2x00usb_vendor_request_sw(rt2x00dev, USB_DEVICE_MODE, 0,
         USB_MODE_SLEEP, REGISTER_TIMEOUT);
 } else {
  rt2x00usb_register_read(rt2x00dev, MAC_CSR11, &reg);
  rt2x00_set_field32(&reg, MAC_CSR11_DELAY_AFTER_TBCN, 0);
  rt2x00_set_field32(&reg, MAC_CSR11_TBCN_BEFORE_WAKEUP, 0);
  rt2x00_set_field32(&reg, MAC_CSR11_AUTOWAKE, 0);
  rt2x00_set_field32(&reg, MAC_CSR11_WAKEUP_LATENCY, 0);
  rt2x00usb_register_write(rt2x00dev, MAC_CSR11, reg);

  rt2x00usb_vendor_request_sw(rt2x00dev, USB_DEVICE_MODE, 0,
         USB_MODE_WAKEUP, REGISTER_TIMEOUT);
 }
}
