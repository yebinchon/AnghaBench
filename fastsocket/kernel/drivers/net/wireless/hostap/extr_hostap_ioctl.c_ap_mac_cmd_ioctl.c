
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* ap; int dev; } ;
typedef TYPE_1__ local_info_t ;
struct TYPE_8__ {int policy; } ;
struct TYPE_7__ {TYPE_5__ mac_restrictions; } ;







 int EOPNOTSUPP ;
 int MAC_POLICY_ALLOW ;
 int MAC_POLICY_DENY ;
 int MAC_POLICY_OPEN ;
 int ap_control_flush_macs (TYPE_5__*) ;
 int ap_control_kickall (TYPE_2__*) ;
 int hostap_deauth_all_stas (int ,TYPE_2__*,int ) ;

__attribute__((used)) static int ap_mac_cmd_ioctl(local_info_t *local, int *cmd)
{
 int ret = 0;

 switch (*cmd) {
 case 128:
  local->ap->mac_restrictions.policy = MAC_POLICY_OPEN;
  break;
 case 130:
  local->ap->mac_restrictions.policy = MAC_POLICY_ALLOW;
  break;
 case 129:
  local->ap->mac_restrictions.policy = MAC_POLICY_DENY;
  break;
 case 132:
  ap_control_flush_macs(&local->ap->mac_restrictions);
  break;
 case 131:
  ap_control_kickall(local->ap);
  hostap_deauth_all_stas(local->dev, local->ap, 0);
  break;
 default:
  ret = -EOPNOTSUPP;
  break;
 }

 return ret;
}
