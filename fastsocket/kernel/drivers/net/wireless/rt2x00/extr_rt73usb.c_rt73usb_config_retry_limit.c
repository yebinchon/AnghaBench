
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rt2x00lib_conf {TYPE_1__* conf; } ;
struct rt2x00_dev {int dummy; } ;
struct TYPE_2__ {int long_frame_max_tx_count; int short_frame_max_tx_count; } ;


 int TXRX_CSR4 ;
 int TXRX_CSR4_LONG_RETRY_LIMIT ;
 int TXRX_CSR4_OFDM_TX_FALLBACK_CCK ;
 int TXRX_CSR4_OFDM_TX_RATE_DOWN ;
 int TXRX_CSR4_OFDM_TX_RATE_STEP ;
 int TXRX_CSR4_SHORT_RETRY_LIMIT ;
 int rt2x00_set_field32 (int *,int ,int) ;
 int rt2x00usb_register_read (struct rt2x00_dev*,int ,int *) ;
 int rt2x00usb_register_write (struct rt2x00_dev*,int ,int ) ;

__attribute__((used)) static void rt73usb_config_retry_limit(struct rt2x00_dev *rt2x00dev,
           struct rt2x00lib_conf *libconf)
{
 u32 reg;

 rt2x00usb_register_read(rt2x00dev, TXRX_CSR4, &reg);
 rt2x00_set_field32(&reg, TXRX_CSR4_OFDM_TX_RATE_DOWN, 1);
 rt2x00_set_field32(&reg, TXRX_CSR4_OFDM_TX_RATE_STEP, 0);
 rt2x00_set_field32(&reg, TXRX_CSR4_OFDM_TX_FALLBACK_CCK, 0);
 rt2x00_set_field32(&reg, TXRX_CSR4_LONG_RETRY_LIMIT,
      libconf->conf->long_frame_max_tx_count);
 rt2x00_set_field32(&reg, TXRX_CSR4_SHORT_RETRY_LIMIT,
      libconf->conf->short_frame_max_tx_count);
 rt2x00usb_register_write(rt2x00dev, TXRX_CSR4, reg);
}
