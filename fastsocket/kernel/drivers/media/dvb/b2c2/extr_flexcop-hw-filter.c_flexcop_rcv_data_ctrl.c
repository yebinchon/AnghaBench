
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flexcop_device {int dummy; } ;


 int Rcv_Data_sig ;
 int ctrl_208 ;
 int deb_ts (char*,char*) ;
 int flexcop_set_ibi_value (int ,int ,int) ;

__attribute__((used)) static void flexcop_rcv_data_ctrl(struct flexcop_device *fc, int onoff)
{
 flexcop_set_ibi_value(ctrl_208, Rcv_Data_sig, onoff);
 deb_ts("rcv_data is now: '%s'\n", onoff ? "on" : "off");
}
