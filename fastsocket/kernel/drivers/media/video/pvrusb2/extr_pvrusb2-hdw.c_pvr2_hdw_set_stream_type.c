
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_hdw {int desired_stream_type; int big_lock; scalar_t__ state_pipeline_config; } ;
typedef enum pvr2_config { ____Placeholder_pvr2_config } pvr2_config ;


 int LOCK_GIVE (int ) ;
 int LOCK_TAKE (int ) ;
 int pvr2_hdw_state_sched (struct pvr2_hdw*) ;
 int pvr2_hdw_wait (struct pvr2_hdw*,int ) ;
 int trace_stbit (char*,scalar_t__) ;

int pvr2_hdw_set_stream_type(struct pvr2_hdw *hdw,enum pvr2_config config)
{
 int fl;
 LOCK_TAKE(hdw->big_lock);
 if ((fl = (hdw->desired_stream_type != config)) != 0) {
  hdw->desired_stream_type = config;
  hdw->state_pipeline_config = 0;
  trace_stbit("state_pipeline_config",
       hdw->state_pipeline_config);
  pvr2_hdw_state_sched(hdw);
 }
 LOCK_GIVE(hdw->big_lock);
 if (fl) return 0;
 return pvr2_hdw_wait(hdw,0);
}
