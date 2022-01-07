
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int sa_family; int sa_data; } ;
struct TYPE_5__ {scalar_t__ flags; scalar_t__ length; } ;
union iwreq_data {TYPE_2__ ap_addr; TYPE_1__ data; } ;
struct net_device {struct airo_info* ml_priv; } ;
struct airo_info {int sem; int jobs; } ;
typedef int status_rid ;
struct TYPE_7__ {int * bssid; } ;
typedef TYPE_3__ StatusRid ;


 int ARPHRD_ETHER ;
 int ETH_ALEN ;
 int JOB_EVENT ;
 int PC4500_readrid (struct airo_info*,int ,TYPE_3__*,int,int ) ;
 int RID_STATUS ;
 int SIOCGIWAP ;
 int clear_bit (int ,int *) ;
 int memcpy (int ,int ,int ) ;
 int up (int *) ;
 int wireless_send_event (struct net_device*,int ,union iwreq_data*,int *) ;

__attribute__((used)) static void airo_send_event(struct net_device *dev) {
 struct airo_info *ai = dev->ml_priv;
 union iwreq_data wrqu;
 StatusRid status_rid;

 clear_bit(JOB_EVENT, &ai->jobs);
 PC4500_readrid(ai, RID_STATUS, &status_rid, sizeof(status_rid), 0);
 up(&ai->sem);
 wrqu.data.length = 0;
 wrqu.data.flags = 0;
 memcpy(wrqu.ap_addr.sa_data, status_rid.bssid[0], ETH_ALEN);
 wrqu.ap_addr.sa_family = ARPHRD_ETHER;


 wireless_send_event(dev, SIOCGIWAP, &wrqu, ((void*)0));
}
