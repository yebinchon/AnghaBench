
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct zcrypt_device {int online; TYPE_2__* ap_dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_4__ {int qid; } ;
struct TYPE_3__ {struct zcrypt_device* private; } ;


 int DBF_INFO ;
 size_t EINVAL ;
 int ZCRYPT_DBF_DEV (int ,struct zcrypt_device*,char*,int ,int) ;
 int ap_flush_queue (TYPE_2__*) ;
 int sscanf (char const*,char*,int*) ;
 TYPE_1__* to_ap_dev (struct device*) ;

__attribute__((used)) static ssize_t zcrypt_online_store(struct device *dev,
       struct device_attribute *attr,
       const char *buf, size_t count)
{
 struct zcrypt_device *zdev = to_ap_dev(dev)->private;
 int online;

 if (sscanf(buf, "%d\n", &online) != 1 || online < 0 || online > 1)
  return -EINVAL;
 zdev->online = online;
 ZCRYPT_DBF_DEV(DBF_INFO, zdev, "dev%04xo%dman", zdev->ap_dev->qid,
         zdev->online);
 if (!online)
  ap_flush_queue(zdev->ap_dev);
 return count;
}
