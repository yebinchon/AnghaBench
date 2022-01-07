
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
 int IO_CNTL_CSR ;
 int MAC_CSR11 ;
 int MAC_CSR11_AUTOWAKE ;
 int MAC_CSR11_DELAY_AFTER_TBCN ;
 int MAC_CSR11_TBCN_BEFORE_WAKEUP ;
 int MAC_CSR11_WAKEUP_LATENCY ;
 int MCU_SLEEP ;
 int MCU_WAKEUP ;
 int PCI_USEC_CSR ;
 int SOFT_RESET_CSR ;
 int STATE_AWAKE ;
 int STATE_SLEEP ;
 int rt2x00_set_field32 (int*,int ,int) ;
 int rt2x00mmio_register_read (struct rt2x00_dev*,int ,int*) ;
 int rt2x00mmio_register_write (struct rt2x00_dev*,int ,int) ;
 int rt61pci_mcu_request (struct rt2x00_dev*,int ,int,int ,int ) ;

__attribute__((used)) static void rt61pci_config_ps(struct rt2x00_dev *rt2x00dev,
    struct rt2x00lib_conf *libconf)
{
 enum dev_state state =
     (libconf->conf->flags & IEEE80211_CONF_PS) ?
  STATE_SLEEP : STATE_AWAKE;
 u32 reg;

 if (state == STATE_SLEEP) {
  rt2x00mmio_register_read(rt2x00dev, MAC_CSR11, &reg);
  rt2x00_set_field32(&reg, MAC_CSR11_DELAY_AFTER_TBCN,
       rt2x00dev->beacon_int - 10);
  rt2x00_set_field32(&reg, MAC_CSR11_TBCN_BEFORE_WAKEUP,
       libconf->conf->listen_interval - 1);
  rt2x00_set_field32(&reg, MAC_CSR11_WAKEUP_LATENCY, 5);


  rt2x00_set_field32(&reg, MAC_CSR11_AUTOWAKE, 0);
  rt2x00mmio_register_write(rt2x00dev, MAC_CSR11, reg);

  rt2x00_set_field32(&reg, MAC_CSR11_AUTOWAKE, 1);
  rt2x00mmio_register_write(rt2x00dev, MAC_CSR11, reg);

  rt2x00mmio_register_write(rt2x00dev, SOFT_RESET_CSR,
       0x00000005);
  rt2x00mmio_register_write(rt2x00dev, IO_CNTL_CSR, 0x0000001c);
  rt2x00mmio_register_write(rt2x00dev, PCI_USEC_CSR, 0x00000060);

  rt61pci_mcu_request(rt2x00dev, MCU_SLEEP, 0xff, 0, 0);
 } else {
  rt2x00mmio_register_read(rt2x00dev, MAC_CSR11, &reg);
  rt2x00_set_field32(&reg, MAC_CSR11_DELAY_AFTER_TBCN, 0);
  rt2x00_set_field32(&reg, MAC_CSR11_TBCN_BEFORE_WAKEUP, 0);
  rt2x00_set_field32(&reg, MAC_CSR11_AUTOWAKE, 0);
  rt2x00_set_field32(&reg, MAC_CSR11_WAKEUP_LATENCY, 0);
  rt2x00mmio_register_write(rt2x00dev, MAC_CSR11, reg);

  rt2x00mmio_register_write(rt2x00dev, SOFT_RESET_CSR,
       0x00000007);
  rt2x00mmio_register_write(rt2x00dev, IO_CNTL_CSR, 0x00000018);
  rt2x00mmio_register_write(rt2x00dev, PCI_USEC_CSR, 0x00000020);

  rt61pci_mcu_request(rt2x00dev, MCU_WAKEUP, 0xff, 0, 0);
 }
}
