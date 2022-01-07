
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flexcop_device {int fullts_streaming_state; } ;


 int deb_ts (char*,char*) ;
 int flexcop_pid_group_filter (struct flexcop_device*,int ,int) ;
 int flexcop_pid_group_filter_ctrl (struct flexcop_device*,int) ;

__attribute__((used)) static int flexcop_toggle_fullts_streaming(struct flexcop_device *fc, int onoff)
{
 if (fc->fullts_streaming_state != onoff) {
  deb_ts("%s full TS transfer\n",onoff ? "enabling" : "disabling");
  flexcop_pid_group_filter(fc, 0, 0x1fe0 * (!onoff));
  flexcop_pid_group_filter_ctrl(fc, onoff);
  fc->fullts_streaming_state = onoff;
 }
 return 0;
}
