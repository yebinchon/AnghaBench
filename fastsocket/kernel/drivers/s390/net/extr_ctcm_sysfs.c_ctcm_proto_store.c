
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ctcm_priv {int protocol; } ;
typedef size_t ssize_t ;


 int CTCM_DBF_DEV (int ,struct device*,char const*) ;
 int CTCM_PROTO_LINUX ;
 int CTCM_PROTO_MPC ;
 int CTCM_PROTO_OS390 ;
 int CTCM_PROTO_S390 ;
 size_t EINVAL ;
 size_t ENODEV ;
 int SETUP ;
 struct ctcm_priv* dev_get_drvdata (struct device*) ;
 int sscanf (char const*,char*,int*) ;

__attribute__((used)) static ssize_t ctcm_proto_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t count)
{
 int value;
 struct ctcm_priv *priv = dev_get_drvdata(dev);

 if (!priv)
  return -ENODEV;
 sscanf(buf, "%u", &value);
 if (!((value == CTCM_PROTO_S390) ||
       (value == CTCM_PROTO_LINUX) ||
       (value == CTCM_PROTO_MPC) ||
       (value == CTCM_PROTO_OS390)))
  return -EINVAL;
 priv->protocol = value;
 CTCM_DBF_DEV(SETUP, dev, buf);

 return count;
}
