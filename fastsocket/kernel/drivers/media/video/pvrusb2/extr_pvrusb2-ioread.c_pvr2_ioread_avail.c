
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_ioread {int sync_state; int spigot_open; int stream; scalar_t__ stream_running; int enabled; } ;


 int BUFFER_COUNT ;
 int EAGAIN ;
 int EIO ;
 int PVR2_TRACE_DATA_FLOW ;
 int pvr2_ioread_filter (struct pvr2_ioread*) ;
 int pvr2_stream_get_ready_count (int ) ;
 int pvr2_trace (int ,char*,char*) ;

int pvr2_ioread_avail(struct pvr2_ioread *cp)
{
 int ret;
 if (!(cp->enabled)) {

  return -EIO;
 }

 if (cp->sync_state == 1) {
  pvr2_ioread_filter(cp);
  if (cp->sync_state == 1) return -EAGAIN;
 }

 ret = 0;
 if (cp->stream_running) {
  if (!pvr2_stream_get_ready_count(cp->stream)) {

   ret = -EAGAIN;
  }
 } else {
  if (pvr2_stream_get_ready_count(cp->stream) < BUFFER_COUNT/2) {

   ret = -EAGAIN;
  }
 }

 if ((!(cp->spigot_open)) != (!(ret == 0))) {
  cp->spigot_open = (ret == 0);
  pvr2_trace(PVR2_TRACE_DATA_FLOW,
      "/*---TRACE_READ---*/ data is %s",
      cp->spigot_open ? "available" : "pending");
 }

 return ret;
}
