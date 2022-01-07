
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_dvb_adapter {int channel; } ;


 int kfree (struct pvr2_dvb_adapter*) ;
 int pvr2_channel_done (int *) ;
 int pvr2_dvb_adapter_exit (struct pvr2_dvb_adapter*) ;
 int pvr2_dvb_frontend_exit (struct pvr2_dvb_adapter*) ;
 int pvr2_dvb_stream_end (struct pvr2_dvb_adapter*) ;

__attribute__((used)) static void pvr2_dvb_destroy(struct pvr2_dvb_adapter *adap)
{
 pvr2_dvb_stream_end(adap);
 pvr2_dvb_frontend_exit(adap);
 pvr2_dvb_adapter_exit(adap);
 pvr2_channel_done(&adap->channel);
 kfree(adap);
}
