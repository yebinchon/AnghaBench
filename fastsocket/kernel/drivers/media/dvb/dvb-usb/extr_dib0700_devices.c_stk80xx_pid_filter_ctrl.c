
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_usb_adapter {int fe; } ;


 int dib8000_pid_filter_ctrl (int ,int) ;

__attribute__((used)) static int stk80xx_pid_filter_ctrl(struct dvb_usb_adapter *adapter,
 int onoff)
{
    return dib8000_pid_filter_ctrl(adapter->fe, onoff);
}
