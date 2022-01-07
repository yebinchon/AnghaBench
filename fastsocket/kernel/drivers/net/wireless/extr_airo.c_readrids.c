
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {struct airo_info* ml_priv; } ;
struct airo_info {unsigned char micstats; int flags; } ;
struct TYPE_3__ {int command; int len; unsigned short ridnum; int data; } ;
typedef TYPE_1__ aironet_ioctl ;
 int CAP_NET_ADMIN ;
 int EFAULT ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int EPERM ;
 int FLAG_COMMIT ;
 int FLAG_FLASHING ;
 int GFP_KERNEL ;
 int PC4500_readrid (struct airo_info*,unsigned short,unsigned char*,scalar_t__,int) ;
 scalar_t__ RIDSIZE ;
 unsigned short RID_APLIST ;
 unsigned short RID_CAPABILITIES ;
 unsigned short RID_CONFIG ;
 unsigned short RID_DRVNAME ;
 unsigned short RID_ETHERENCAP ;
 unsigned short RID_SSID ;
 unsigned short RID_STATS ;
 unsigned short RID_STATSDELTA ;
 unsigned short RID_STATUS ;
 unsigned short RID_WEP_PERM ;
 unsigned short RID_WEP_TEMP ;
 int capable (int ) ;
 scalar_t__ copy_to_user (int ,unsigned char*,int ) ;
 int disable_MAC (struct airo_info*,int) ;
 int enable_MAC (struct airo_info*,int) ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (scalar_t__,int ) ;
 int min (int,int) ;
 scalar_t__ test_bit (int ,int *) ;
 int writeConfigRid (struct airo_info*,int) ;

__attribute__((used)) static int readrids(struct net_device *dev, aironet_ioctl *comp) {
 unsigned short ridcode;
 unsigned char *iobuf;
 int len;
 struct airo_info *ai = dev->ml_priv;

 if (test_bit(FLAG_FLASHING, &ai->flags))
  return -EIO;

 switch(comp->command)
 {
 case 140: ridcode = RID_CAPABILITIES; break;
 case 139: ridcode = RID_CONFIG;
  if (test_bit(FLAG_COMMIT, &ai->flags)) {
   disable_MAC (ai, 1);
   writeConfigRid (ai, 1);
   enable_MAC(ai, 1);
  }
  break;
 case 135: ridcode = RID_SSID; break;
 case 131: ridcode = RID_APLIST; break;
 case 138: ridcode = RID_DRVNAME; break;
 case 137: ridcode = RID_ETHERENCAP; break;
 case 129: ridcode = RID_WEP_TEMP;

  if (!capable(CAP_NET_ADMIN))
   return -EPERM;
  break;
 case 130: ridcode = RID_WEP_PERM;

  if (!capable(CAP_NET_ADMIN))
   return -EPERM;
  break;
 case 134: ridcode = RID_STATUS; break;
 case 132: ridcode = RID_STATSDELTA; break;
 case 133: ridcode = RID_STATS; break;
 case 136:
  if (copy_to_user(comp->data, &ai->micstats,
     min((int)comp->len,(int)sizeof(ai->micstats))))
   return -EFAULT;
  return 0;
 case 128: ridcode = comp->ridnum; break;
 default:
  return -EINVAL;
  break;
 }

 if ((iobuf = kmalloc(RIDSIZE, GFP_KERNEL)) == ((void*)0))
  return -ENOMEM;

 PC4500_readrid(ai,ridcode,iobuf,RIDSIZE, 1);




 len = comp->len;

 if (copy_to_user(comp->data, iobuf, min(len, (int)RIDSIZE))) {
  kfree (iobuf);
  return -EFAULT;
 }
 kfree (iobuf);
 return 0;
}
