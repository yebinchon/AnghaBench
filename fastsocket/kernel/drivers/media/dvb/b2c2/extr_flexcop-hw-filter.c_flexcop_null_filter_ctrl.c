
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flexcop_device {int dummy; } ;


 int Null_filter_sig ;
 int ctrl_208 ;
 int flexcop_set_ibi_value (int ,int ,int) ;

__attribute__((used)) static void flexcop_null_filter_ctrl(struct flexcop_device *fc, int onoff)
{
 flexcop_set_ibi_value(ctrl_208, Null_filter_sig, onoff);
}
