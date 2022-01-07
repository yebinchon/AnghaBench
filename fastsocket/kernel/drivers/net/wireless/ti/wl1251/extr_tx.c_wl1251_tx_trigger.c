
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wl1251 {int data_in_count; } ;


 int ACX_REG_INTERRUPT_TRIG ;
 int ACX_REG_INTERRUPT_TRIG_H ;
 int INTR_TRIG_TX_PROC0 ;
 int INTR_TRIG_TX_PROC1 ;
 int TX_STATUS_DATA_OUT_COUNT_MASK ;
 int wl1251_reg_write32 (struct wl1251*,int ,int ) ;

__attribute__((used)) static void wl1251_tx_trigger(struct wl1251 *wl)
{
 u32 data, addr;

 if (wl->data_in_count & 0x1) {
  addr = ACX_REG_INTERRUPT_TRIG_H;
  data = INTR_TRIG_TX_PROC1;
 } else {
  addr = ACX_REG_INTERRUPT_TRIG;
  data = INTR_TRIG_TX_PROC0;
 }

 wl1251_reg_write32(wl, addr, data);


 wl->data_in_count = (wl->data_in_count + 1) &
  TX_STATUS_DATA_OUT_COUNT_MASK;
}
