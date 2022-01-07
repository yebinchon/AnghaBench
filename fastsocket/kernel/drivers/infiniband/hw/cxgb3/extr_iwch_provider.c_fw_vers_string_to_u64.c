
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct net_device {TYPE_3__* ethtool_ops; } ;
struct TYPE_5__ {TYPE_1__* t3cdev_p; } ;
struct iwch_dev {TYPE_2__ rdev; } ;
struct ethtool_drvinfo {char* fw_version; } ;
struct TYPE_6__ {int (* get_drvinfo ) (struct net_device*,struct ethtool_drvinfo*) ;} ;
struct TYPE_4__ {struct net_device* lldev; } ;


 int sscanf (char*,char*,unsigned int*) ;
 char* strsep (char**,char*) ;
 int stub1 (struct net_device*,struct ethtool_drvinfo*) ;

__attribute__((used)) static u64 fw_vers_string_to_u64(struct iwch_dev *iwch_dev)
{
 struct ethtool_drvinfo info;
 struct net_device *lldev = iwch_dev->rdev.t3cdev_p->lldev;
 char *cp, *next;
 unsigned fw_maj, fw_min, fw_mic;

 lldev->ethtool_ops->get_drvinfo(lldev, &info);

 next = info.fw_version + 1;
 cp = strsep(&next, ".");
 sscanf(cp, "%i", &fw_maj);
 cp = strsep(&next, ".");
 sscanf(cp, "%i", &fw_min);
 cp = strsep(&next, ".");
 sscanf(cp, "%i", &fw_mic);

 return (((u64)fw_maj & 0xffff) << 32) | ((fw_min & 0xffff) << 16) |
        (fw_mic & 0xffff);
}
