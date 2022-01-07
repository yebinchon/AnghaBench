
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_dvb_adapter {int buffer_wait_data; } ;


 int wake_up (int *) ;

__attribute__((used)) static void pvr2_dvb_notify(struct pvr2_dvb_adapter *adap)
{
 wake_up(&adap->buffer_wait_data);
}
