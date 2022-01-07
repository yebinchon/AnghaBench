
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_dvb_adapter {int dummy; } ;


 int pvr2_dvb_stream_do_start (struct pvr2_dvb_adapter*) ;
 int pvr2_dvb_stream_end (struct pvr2_dvb_adapter*) ;

__attribute__((used)) static int pvr2_dvb_stream_start(struct pvr2_dvb_adapter *adap)
{
 int ret = pvr2_dvb_stream_do_start(adap);
 if (ret < 0) pvr2_dvb_stream_end(adap);
 return ret;
}
