
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wimax_dev {int dummy; } ;
struct i2400m_tlv_system_state {int state; } ;
struct i2400m {int state; int (* bus_reset ) (struct i2400m*,int ) ;int state_wq; struct wimax_dev wimax_dev; } ;
struct device {int dummy; } ;
typedef enum i2400m_system_state { ____Placeholder_i2400m_system_state } i2400m_system_state ;


 int I2400M_RT_WARM ;
 int WIMAX_ST_CONNECTED ;
 int WIMAX_ST_RADIO_OFF ;
 int WIMAX_ST_READY ;
 int WIMAX_ST_SCANNING ;
 int WIMAX_ST_UNINITIALIZED ;
 int d_fnend (int,struct device*,char*,struct i2400m*,struct i2400m_tlv_system_state const*,int) ;
 int d_fnstart (int,struct device*,char*,struct i2400m*,struct i2400m_tlv_system_state const*,int) ;
 int d_printf (int,struct device*,char*) ;
 int dev_err (struct device*,char*,int) ;
 struct device* i2400m_dev (struct i2400m*) ;
 int le32_to_cpu (int ) ;
 int stub1 (struct i2400m*,int ) ;
 int wake_up_all (int *) ;
 int wimax_state_change (struct wimax_dev*,int ) ;

__attribute__((used)) static
void i2400m_report_tlv_system_state(struct i2400m *i2400m,
        const struct i2400m_tlv_system_state *ss)
{
 struct device *dev = i2400m_dev(i2400m);
 struct wimax_dev *wimax_dev = &i2400m->wimax_dev;
 enum i2400m_system_state i2400m_state = le32_to_cpu(ss->state);

 d_fnstart(3, dev, "(i2400m %p ss %p [%u])\n", i2400m, ss, i2400m_state);

 if (i2400m->state != i2400m_state) {
  i2400m->state = i2400m_state;
  wake_up_all(&i2400m->state_wq);
 }
 switch (i2400m_state) {
 case 129:
 case 138:
 case 143:
 case 136:
  wimax_state_change(wimax_dev, WIMAX_ST_UNINITIALIZED);
  break;

 case 134:
 case 133:
  wimax_state_change(wimax_dev, WIMAX_ST_RADIO_OFF);
  break;

 case 135:
 case 130:
 case 131:
  wimax_state_change(wimax_dev, WIMAX_ST_READY);
  break;

 case 142:
 case 128:
  wimax_state_change(wimax_dev, WIMAX_ST_READY);
  break;

 case 132:
 case 137:
  wimax_state_change(wimax_dev, WIMAX_ST_SCANNING);
  break;

 case 139:
  d_printf(1, dev, "entering BS-negotiated idle mode\n");
 case 140:
 case 141:
  wimax_state_change(wimax_dev, WIMAX_ST_CONNECTED);
  break;

 default:

  dev_err(dev, "HW BUG? unknown state %u: shutting down\n",
   i2400m_state);
  i2400m->bus_reset(i2400m, I2400M_RT_WARM);
  break;
 };
 d_fnend(3, dev, "(i2400m %p ss %p [%u]) = void\n",
  i2400m, ss, i2400m_state);
}
