
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pd_dvb_adapter {int dummy; } ;
struct poseidon {struct pd_dvb_adapter dvb_data; } ;


 int dvb_urb_cleanup (struct pd_dvb_adapter*) ;

void pd_dvb_usb_device_cleanup(struct poseidon *pd)
{
 struct pd_dvb_adapter *pd_dvb = &pd->dvb_data;

 dvb_urb_cleanup(pd_dvb);
}
