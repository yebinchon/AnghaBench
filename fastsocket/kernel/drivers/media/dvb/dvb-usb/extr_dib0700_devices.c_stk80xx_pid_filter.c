
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dvb_usb_adapter {int fe; } ;


 int dib8000_pid_filter (int ,int,int ,int) ;

__attribute__((used)) static int stk80xx_pid_filter(struct dvb_usb_adapter *adapter, int index,
 u16 pid, int onoff)
{
    return dib8000_pid_filter(adapter->fe, index, pid, onoff);
}
