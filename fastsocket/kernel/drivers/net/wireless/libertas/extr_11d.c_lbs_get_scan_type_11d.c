
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct parsed_region_chan_11d {int dummy; } ;


 int CMD_SCAN_TYPE_ACTIVE ;
 int CMD_SCAN_TYPE_PASSIVE ;
 int LBS_DEB_11D ;
 scalar_t__ lbs_channel_known_11d (int ,struct parsed_region_chan_11d*) ;
 int lbs_deb_11d (char*) ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave_args (int ,char*,int ) ;

u8 lbs_get_scan_type_11d(u8 chan,
     struct parsed_region_chan_11d * parsed_region_chan)
{
 u8 scan_type = CMD_SCAN_TYPE_PASSIVE;

 lbs_deb_enter(LBS_DEB_11D);

 if (lbs_channel_known_11d(chan, parsed_region_chan)) {
  lbs_deb_11d("found, do active scan\n");
  scan_type = CMD_SCAN_TYPE_ACTIVE;
 } else {
  lbs_deb_11d("not found, do passive scan\n");
 }

 lbs_deb_leave_args(LBS_DEB_11D, "ret scan_type %d", scan_type);
 return scan_type;

}
