
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2400m_tlv_rf_switches_status {int hw_rf_switch; int sw_rf_switch; } ;
struct i2400m {int wimax_dev; } ;
struct device {int dummy; } ;
typedef enum wimax_st { ____Placeholder_wimax_st } wimax_st ;
typedef enum i2400m_rf_switch_status { ____Placeholder_i2400m_rf_switch_status } i2400m_rf_switch_status ;




 int WIMAX_RF_OFF ;
 int WIMAX_RF_ON ;
 int WIMAX_ST_RADIO_OFF ;
 int d_fnend (int,struct device*,char*,struct i2400m*,struct i2400m_tlv_rf_switches_status const*,int,int) ;
 int d_fnstart (int,struct device*,char*,struct i2400m*,struct i2400m_tlv_rf_switches_status const*,int,int) ;
 int d_printf (int,struct device*,char*,int) ;
 int dev_err (struct device*,char*,int) ;
 struct device* i2400m_dev (struct i2400m*) ;
 int le32_to_cpu (int ) ;
 int wimax_report_rfkill_hw (int *,int ) ;
 int wimax_report_rfkill_sw (int *,int ) ;
 int wimax_state_get (int *) ;

void i2400m_report_tlv_rf_switches_status(
 struct i2400m *i2400m,
 const struct i2400m_tlv_rf_switches_status *rfss)
{
 struct device *dev = i2400m_dev(i2400m);
 enum i2400m_rf_switch_status hw, sw;
 enum wimax_st wimax_state;

 sw = le32_to_cpu(rfss->sw_rf_switch);
 hw = le32_to_cpu(rfss->hw_rf_switch);

 d_fnstart(3, dev, "(i2400m %p rfss %p [hw %u sw %u])\n",
    i2400m, rfss, hw, sw);


 wimax_state = wimax_state_get(&i2400m->wimax_dev);
 if (wimax_state < WIMAX_ST_RADIO_OFF) {
  d_printf(3, dev, "ignoring RF switches report, state %u\n",
    wimax_state);
  goto out;
 }
 switch (sw) {
 case 128:
  wimax_report_rfkill_sw(&i2400m->wimax_dev, WIMAX_RF_ON);
  break;
 case 129:
  wimax_report_rfkill_sw(&i2400m->wimax_dev, WIMAX_RF_OFF);
  break;
 default:
  dev_err(dev, "HW BUG? Unknown RF SW state 0x%x\n", sw);
 }

 switch (hw) {
 case 128:
  wimax_report_rfkill_hw(&i2400m->wimax_dev, WIMAX_RF_ON);
  break;
 case 129:
  wimax_report_rfkill_hw(&i2400m->wimax_dev, WIMAX_RF_OFF);
  break;
 default:
  dev_err(dev, "HW BUG? Unknown RF HW state 0x%x\n", hw);
 }
out:
 d_fnend(3, dev, "(i2400m %p rfss %p [hw %u sw %u]) = void\n",
  i2400m, rfss, hw, sw);
}
