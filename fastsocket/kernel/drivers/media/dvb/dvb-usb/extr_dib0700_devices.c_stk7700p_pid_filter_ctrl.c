
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_usb_adapter {int fe; TYPE_1__* dev; } ;
struct dib0700_state {scalar_t__ is_dib7000pc; } ;
struct TYPE_2__ {struct dib0700_state* priv; } ;


 int dib7000m_pid_filter_ctrl (int ,int) ;
 int dib7000p_pid_filter_ctrl (int ,int) ;

__attribute__((used)) static int stk7700p_pid_filter_ctrl(struct dvb_usb_adapter *adapter, int onoff)
{
 struct dib0700_state *st = adapter->dev->priv;
 if (st->is_dib7000pc)
  return dib7000p_pid_filter_ctrl(adapter->fe, onoff);
 return dib7000m_pid_filter_ctrl(adapter->fe, onoff);
}
