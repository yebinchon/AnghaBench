
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct hostap_interface {TYPE_2__* local; } ;
struct hfa384x_comms_quality {int noise_level; int signal_level; int comm_qual; } ;
typedef int sq ;
typedef void* s16 ;
struct TYPE_4__ {scalar_t__ sta_fw_ver; void* last_comms_qual_update; void* avg_noise; void* avg_signal; void* comms_qual; int dev; TYPE_1__* func; } ;
typedef TYPE_2__ local_info_t ;
struct TYPE_3__ {scalar_t__ (* get_rid ) (int ,int ,struct hfa384x_comms_quality*,int,int) ;} ;


 void* HFA384X_LEVEL_TO_dBm (void*) ;
 int HFA384X_RID_COMMSQUALITY ;
 int HFA384X_RID_DBMCOMMSQUALITY ;
 scalar_t__ PRISM2_FW_VER (int,int,int) ;
 void* jiffies ;
 void* le16_to_cpu (int ) ;
 struct hostap_interface* netdev_priv (struct net_device*) ;
 scalar_t__ stub1 (int ,int ,struct hfa384x_comms_quality*,int,int) ;
 scalar_t__ stub2 (int ,int ,struct hfa384x_comms_quality*,int,int) ;

int prism2_update_comms_qual(struct net_device *dev)
{
 struct hostap_interface *iface;
 local_info_t *local;
 int ret = 0;
 struct hfa384x_comms_quality sq;

 iface = netdev_priv(dev);
 local = iface->local;
 if (!local->sta_fw_ver)
  ret = -1;
 else if (local->sta_fw_ver >= PRISM2_FW_VER(1,3,1)) {
  if (local->func->get_rid(local->dev,
      HFA384X_RID_DBMCOMMSQUALITY,
      &sq, sizeof(sq), 1) >= 0) {
   local->comms_qual = (s16) le16_to_cpu(sq.comm_qual);
   local->avg_signal = (s16) le16_to_cpu(sq.signal_level);
   local->avg_noise = (s16) le16_to_cpu(sq.noise_level);
   local->last_comms_qual_update = jiffies;
  } else
   ret = -1;
 } else {
  if (local->func->get_rid(local->dev, HFA384X_RID_COMMSQUALITY,
      &sq, sizeof(sq), 1) >= 0) {
   local->comms_qual = le16_to_cpu(sq.comm_qual);
   local->avg_signal = HFA384X_LEVEL_TO_dBm(
    le16_to_cpu(sq.signal_level));
   local->avg_noise = HFA384X_LEVEL_TO_dBm(
    le16_to_cpu(sq.noise_level));
   local->last_comms_qual_update = jiffies;
  } else
   ret = -1;
 }

 return ret;
}
