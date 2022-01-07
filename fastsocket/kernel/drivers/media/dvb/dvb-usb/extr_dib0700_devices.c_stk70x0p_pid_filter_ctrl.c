
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_usb_adapter {int fe; } ;


 int dib7000p_pid_filter_ctrl (int ,int) ;

__attribute__((used)) static int stk70x0p_pid_filter_ctrl(struct dvb_usb_adapter *adapter, int onoff)
{
    return dib7000p_pid_filter_ctrl(adapter->fe, onoff);
}
