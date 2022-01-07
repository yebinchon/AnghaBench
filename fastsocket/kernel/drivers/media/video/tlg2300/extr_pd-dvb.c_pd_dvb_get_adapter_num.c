
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num; } ;
struct pd_dvb_adapter {TYPE_1__ dvb_adap; } ;



int pd_dvb_get_adapter_num(struct pd_dvb_adapter *pd_dvb)
{
 return pd_dvb->dvb_adap.num;
}
